package {'apache':
  name   => httpd,
  ensure => present,
}

service {'apache':
  name   => httpd,
  ensure => stopped,
}
