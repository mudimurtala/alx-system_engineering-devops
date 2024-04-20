# This Puppet manifest ensures that vim is installed on the system
package { 'vim':
  ensure => installed,
}
