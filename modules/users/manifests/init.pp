class users {

  user { 'testing':
    ensure   => present,
    password => 'FDJashae85$$sfha!00',
    groups   => ['Users', 'Power Users', 'test-user'],
  }

  group { 'test-user':
    ensure => present,
  }

}


