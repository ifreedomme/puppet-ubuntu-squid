# Handle basic unix tasks that should be done on all unix hosts
class unix_base::repos inherits unix_base {

  include unix_base::common

  if $::osfamily == 'Debian' {
    file { '/tmp/update':
      ensure => present,
      notify => Exec['apt-get-update-tmp'],
    }
    exec { 'apt-get-update-tmp':
      refreshonly => true,
      command     => '/usr/bin/apt-get update',
    }
  }
}
