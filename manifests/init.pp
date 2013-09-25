# Class: sqlite
#
# This class manages the installation of the sqlite database.
# === Parameters:
#
# There are no default parameters for this class.
#
# === Variables
#
# $package
#   Dynamically set depending on OS
# $ensure
#   Defaults to present
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
