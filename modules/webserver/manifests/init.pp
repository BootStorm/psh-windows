class webserver { 

  dism { 'IIS-WebServerRole':
    ensure => present,
  }->
  dism { 'IIS-WebServer':
    ensure => present,
  }

  iis::manage_app_pool { 'my_first_pool':
    enable_32_bit           => true,
    managed_runtime_version => 'v4.0',
  }

  iis::manage_site {'www.testsite.com':
    site_path   => 'C:\inetpub\wwwroot\testsite',
    port        => '80',
    ip_address  => '*',
    host_header => 'www.testsite.com',
    app_pool    => 'my_first_pool',
  }
}

