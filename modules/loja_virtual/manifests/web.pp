class loja_virtual::web {

  include loja_virtual

  include mysql::client

  include loja_virtual::params

  file { $loja_virtual::params::keystore_file:
    mode => 0644,
    source => "puppet:///modules/loja_virtual/.keystore",
  }

  class { "tomcat::server":
    connectors => [$loja_virtual::params::ssl_connector],
    data_sources => {
       "jdbc/web" => $loja_virtual::params::db,
       "jdbc/secure" => $loja_virtual::params::db,
       "jdbc/storage" => $loja_virtual::params::db,
    },
  require => File[$loja_virtual::params::keystore_file],
  }

  apt::source { 'devopsnapratica':
    location => 'http://192.168.3.102/',
    release => 'devopspkgs',
    repos => 'main',
    key => '4F3FD614',
    key_source => 'http://192.168.3.102/devopspkgs.gpg'
    include_src => false,
  }

  package { "devopsnapratica":
    ensure => "latest",
    notify => Service["tomcat7"],
  }

}
