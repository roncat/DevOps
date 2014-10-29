class loja_virtual::repo($basedir, $name) {

  package { 'reprepro':
    ensure => 'installed',
  }

  $repo_structure = [
    "$basedir",
    "$basedir/conf",
  ]

  file { $repo_structure:
    ensure => 'directory',
    owner  => 'jenkins',
    group  => 'jenkins',
    require => Class['jenkins'],
  }

  file { "$basedir/conf/distributions":
    owner => 'jenkins',
    group => 'jenkins',
    content => template('loja_virtual/distributions.erb'),
    require => File["$basedir/conf"],
  }

  class { 'apache': }

  apache::vhost { $name:
    port => 80,
    docroot => $basedir,
    servername => $ipaddress_eth1,
  }

}
