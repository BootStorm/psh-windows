class sevenzip2 {

  include chocolatey

  package { '7Zip':
    ensure   => latest,
    provider => 'chocolatey',
  }

  reboot { 'after':
    subscribe => Package['7Zip'],
  }

}
