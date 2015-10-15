class users {

  user { 'testing':
    ensure   => present,
    password => 'testing123!!',
  }

}


