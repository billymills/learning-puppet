#apache2-class1.pp

class apache2 {
  case $operatingsystem {
    centos, redhat: {
      $service_name = 'httpd'
      $conf_file = 'httpd.conf'
    }
    #debian, unbuntu: {
    #$service_name =
    #$conf_file = 
    #}
  }

  package { 'httpd':
    ensure => installed,
  }

  service { 'httpd':
    name => $service_name,
    ensure => running,
    enable => true,
    subscribe => File['httpd.conf'],
  }

  file { 'httpd.conf':
    path    => "/etc/httpd/conf/httpd.conf",
    ensure  => file,
    require => Package['httpd'],
    source  => "puppet:///httpd/conf/${conf_file}", 
  }
}
