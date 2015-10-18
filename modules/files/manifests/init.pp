class files {

  include acl

  $tempdir = 'C:\temp'
  $testdir = "${tempdir}\\testing"
  $testowner = 'testing'
  $testgroup = 'test-user'

  File {
    ensure => directory,
    owner  => $testowner,
    group  => $testgroup,
  }

  file { $tempdir: }->

  file { $testdir:
  }

  acl { $testdir:
    permissions  => [
      { identity => $testowner, rights => ['full'],},
      { identity => $testgroup, rights => ['read','execute'],},
    ],
    inherit_parent_permissions => false,
  }
}

