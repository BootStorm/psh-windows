class files {

  File {
    ensure => directory,
    owner  => 'testing',
    group  => 'test-user',
  }

  file { 'C:\temp': }->

  file { 'C:\temp\testing':
  }

}

