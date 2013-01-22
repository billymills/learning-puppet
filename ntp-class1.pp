#ntp-class1.pp

class ntp {
  case $operatingsystem {
    centos, redhat: {
      $service_name = 'ntpd'
      $conf_file = 'ntp.conf.el'
    }
    debin, ubuntu: {
      $service_name = 'ntp'
      $conf_file = 'ntp.conf.debian'
    }
  }

  package { 'ntp':
    ensure => installed,
  }

  service { 'ntp':
    name      => $service_name,
    ensure    => running,
    enable    => true,
    subscribe => File['ntp.conf'],
  }

  file { 'ntp.conf':
    path    => '/etc/ntp.conf',
    ensure  => file,
    require => Package['ntp'],
    source  => "/root/learning-manifests/${conf_file}",
  }
}

# then, declare it:

class { 'ntp': }

