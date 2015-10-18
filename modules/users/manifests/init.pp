class users {

  include local_security_policy

  user { 'testing':
    ensure   => present,
    password => 'FDJashae85$$sfha!00',
    groups   => ['Users', 'Power Users', 'test-user'],
  }

  group { 'test-user':
    ensure => present,
  }

  local_security_policy { 'Log on as a service':
    ensure       => present,
    policy_value => ['NT_SERVICE\ALL_SERVICES,cloudbase-init,testing'],
  }
}


