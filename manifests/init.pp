# Class: sqlite
#
# This class manages the installation of the sqlite
# database.
#
# Sample Usage:
# class { 'sqlite': }
class sqlite (
  $version = undef,
  ) {

  if $version == '3' and $osfamily == 'Debian' {
    $package_name = 'sqlite3'
  }
  elsif $version == '2' and $osfamily == 'RedHat' {
    $package_name = 'sqlite2'
  }
  else {
    $package_name = 'sqlite'
  }

  package { $package_name:
    ensure => installed,
  }

  file { '/var/lib/sqlite/':
    ensure => directory,
  }
}
