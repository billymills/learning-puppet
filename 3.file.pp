file { '/tmp/test1':
  ensure  => present,
  content => "Hi.",
  before  => Notify['/tmp/test1 has already been synced.'],
}

notify {'/tmp/test1 has already been synced.':}

file { '/tmp/test2':
  ensure => directory,
  mode   => 0644,
}

file { '/tmp/test3':
  ensure => link,
  target => '/tmp/test1',
}

notify {"I'm notifying you.":}
notify {"So am I!":}
