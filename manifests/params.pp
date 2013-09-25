class sqlite::params {
  $package = $operatingsystem ? {
    /(?i-mx:ubuntu|debian)/        => 'sqlite3',
    /(?i-mx:centos|fedora|redhat)/ => 'sqlite',
  }
  $ensure = 'present'
}