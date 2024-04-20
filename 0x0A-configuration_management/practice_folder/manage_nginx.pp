# This Puppet manifest manages the nginx service
package { 'nginx':
  ensure => installed,
}


service { 'nginx':
  ensure    => running,
  enable    => true,
  require   => Package['nginx'],
}

