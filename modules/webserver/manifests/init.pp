class webserver { 

  dism { 'IIS-WebServerRole':
    ensure => present,
  }->
  dism { 'IIS-WebServer':
    ensure => present,
  }

}

