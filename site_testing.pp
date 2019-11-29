file {'/tmp/example.txt':
 ensure  => present,
 mode    => "0644",
 content => "From Theting Environment \n",
}
