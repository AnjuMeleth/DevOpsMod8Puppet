package {'git':
 ensure => present
}
exec {'apt-update':
 command => '/usr/bin/apt-get update'
}
package {'tree':
 ensure => present
}

