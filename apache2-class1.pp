#apache2-class1.pp

class apache2 {
  case $operatingsystem {
    centos, redhat: {
      $service_name = 'http'
      $conf_file = 'http.conf'
    }
    debian, unbuntu: {
      $service_name =
      $conf_file = 
    }
  }

  package { 'http':
    ensure => installed,
  }

  service { 'http':
    name => $service_name,
    ensure => running,
    enable = > true,
    subscribe => File['http.conf',
  }

  file {

  }
