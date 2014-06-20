class squid::configure inherits squid {

  file { '/etc/squid3/squid.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => 'puppet:///modules/squid/squid.conf',
    require => Class['squid::packages'],
    notify  => Class['squid::services'],
  }

  file { '/vagrant/external_auth.rb':
    ensure => present,
    owner  => root,
    group  => root,
    mode   => '0755',
    source => 'puppet:///modules/squid/external_auth.rb',
    require => Class['squid::packages'],
    notify  => Class['squid::services'],
  }

  file { '/vagrant/external_acl.rb':
    ensure => present,
    owner  => root,
    group  => root,
    mode   => '0755',
    source => 'puppet:///modules/squid/external_acl.rb',
    require => [Class['squid::packages'],File['/tmp/test.log']],
    notify  => Class['squid::services'],
  }

  file { '/tmp/test.log':
    ensure => present,
    owner  => proxy,
    group  => proxy,
    mode   => '0644',
  }


  
}
