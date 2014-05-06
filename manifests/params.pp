# === Class: sqlite::param
#
# This module manages sqlite parameters
#
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
# === Actions:
#
# === Requires:
#
# Sample Usage:
#
# This class file is not called directly
class sqlite::params {

  case $::operatingsystem {
    ubuntu, debian: {
      $package = 'sqlite3'
    }
    centos, fedora, redhat: {
      $package = 'sqlite'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}")
    }
  }

  $ensure = 'present'

}