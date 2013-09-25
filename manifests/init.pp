# Class: sqlite
#
# This class manages the installation of the sqlite
# database.
#
# Sample Usage:
# class { 'sqlite': }
class sqlite (
  $package = $sqlite::params::package,
  $ensure  = $sqlite::params::ensure
) inherits sqlite::params {

  package { $package:
    ensure => $ensure,
  }

  file { '/var/lib/sqlite/':
    ensure => directory,
  }
}
