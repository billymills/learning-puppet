file {'motd':
  path    => '/etc/motd',
  ensure  => present,
  content => "new login",
}
