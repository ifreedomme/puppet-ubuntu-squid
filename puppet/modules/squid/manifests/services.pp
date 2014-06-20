class squid::services inherits squid {

  service { 'squid3':
    enable    => true,
    ensure    => running,
    hasstatus => true,
    require   => Class['squid::packages'],
  }
  
}
