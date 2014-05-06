# Class: sqlite
#
# This class manages the installation of the sqlite database.
# === Parameters:
#
# $package
#   Dynamically set depending on OS
# $ensure
#   Defaults to present
#
# === Variables
#
# There are no default parameters for this class.
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
