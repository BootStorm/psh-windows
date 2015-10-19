class sevenzip2 {

  include chocolatey

  package { '7Zip':
    ensure   => installed,
    provider => 'chocolatey',
  }

}
