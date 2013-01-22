#manifest that installs build environment dependent on os

case $operatingsystem {
  debian, ubuntu: {
    package { 'gcc':
      ensure => present,
      name   => 'gcc',
    }
    package { 'build-essential':
      ensure => present,
      name   => 'build-essential',
    }
  }
  centos, redhat: {
    package { 'gcc':
      ensure => present,
      name   => 'gcc',
    }
  }
}
