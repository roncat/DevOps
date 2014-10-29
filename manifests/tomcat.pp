  class { 'apt':
    always_apt_update => true,
  }

  Class['apt'] -> Package <| |>

  $keystore_file = "/etc/ssl/.keystore"

  $ssl_connector = {
    "port" => 8443,
    "protocol" => "HTTP/1.1",
    "SSLEnabled" => true,
    "maxThreads" => 150,
    "scheme" => "https",
    "secure" => "true",
    "keystoreFile" => $keystore_file,
    "keystorePass" => "secret",
    "clientAuth" => false,
    "sslProtocol" => "SSLv3",
  }

  $db = {
    "user" => "loja",
    "password" => "lojasecret",
    "schema" => "loja_schema",
    "driver" => "com.mysql.jdbc.Driver",
    "url" => "jdbc:mysql://192.168.3.10:3306/",
  }

  file { $keystore_file:
    mode => 0644,
    source => "puppet:///modules/loja_virtual/.keystore",
  }

  class { "tomcat::server":
    connectors => [$ssl_connector],
    data_sources => {
       "jdbc/web" => $db,
       "jdbc/secure" => $db,
       "jdbc/storage" => $db,
    },
	  require => File[$keystore_file],
  }

