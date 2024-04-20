# This Puppet manifest creates a file with specified content
file { '/tmp/hello.txt':
  ensure => 'file',
  content => "Hello, Puppet!\n",
}