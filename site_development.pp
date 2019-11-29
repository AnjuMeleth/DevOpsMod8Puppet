file {'/tmp/example.txt':
 ensure  => present,
 mode    => "0644",
 content => "From The Development Environment \n",
}
