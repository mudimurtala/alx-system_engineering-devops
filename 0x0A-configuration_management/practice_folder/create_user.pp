# This Puppet manifest creates a user with a home directory
user { 'exampleuser':
  ensure     => present,
  managehome => true,
}

