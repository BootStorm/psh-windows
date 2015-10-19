class reg_svr {

  registry::value { 'IECenable':
    key   => 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}',
    data  => '00000001',
    type  => dword,
    value => "IsInstalled",
  }

  registry::value { 'IECEnableAdmin':
    key   => 'HKLM\Software\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}',
    data  => '00000001',
    type  => dword,
    value => "IsInstalled",
  }

  registry::value { 'ShutdownTracker':
    key   => 'HKLM\Software\Microsoft\Windows\CurrentVersion\Reliability',
    data  => '1',
    type  => dword,
    value => "ShutdownReasonUI",
  }

}

