class seven_zip {

  $staging_dir = 'c:\temp2'
  $sw_name = '7z1509-x64.exe'

  class { 'pe_staging':
    path  => $staging_dir,
    #    owner => 'testing',
    #group => 'test-user',
  }

  #file { '7zip':
  #  source => "puppet:///modules/seven_zip/${sw_name}",
  #  path   => "${staging_dir}/${sw_name}",
  #}

  pe_staging::file { 'sevenzip':
    source => "puppet://modules/seven_zip/${sw_name}",
  }

  pe_staging::deploy { $sw_name:
    source  => "${staging_dir}\\${sw_name}",
    target  => 'C:\7zip',
    require => Pe_staging::File['sevenzip'],
  }

}

