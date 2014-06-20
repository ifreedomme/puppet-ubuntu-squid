###################################
#     Site.pp

stage { 'pre':
  before => Stage['main']
}

class { 'unix_base': 
  stage => pre;
}


include unix_base
include stdlib
include squid
