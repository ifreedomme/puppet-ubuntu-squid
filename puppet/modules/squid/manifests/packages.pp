class squid::packages inherits squid {

  package { 'squid':
    ensure  => installed
  }

}
