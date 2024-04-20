# This Puppet manifest applies a configuration template
class myconfig {
  $setting_value = 'Value1'


  file { '/tmp/myconfig.conf':
    ensure  => file,
    content => template('path/to/myconfig.erb'),
    require => Class['::myconfig'],

  }
 }

include myconfig
