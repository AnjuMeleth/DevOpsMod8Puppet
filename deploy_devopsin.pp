class devopsin::deploy {
 file {'/home/edureka/Downloads/inClass':
 ensure => directory,
 mode => '0777'
 }
 file {'/home/edureka/inClass/addressbook.war':
 mode => '0777',
 source => "puppet:///modules/devopsin/addressbook.war"
 }
 file {'/home/edureka/inClass/Dockerfile':
 mode => '0777',
 source => "puppet:///modules/devopsin/Dockerfile"
 }
 exec {'Docker-build':
 cwd => '/home/edureka/inClass/',
 command => '/usr/bin/docker build . -t edureka/inclass'
 }
 exec {'Docker-run':
 cwd => '/home/edureka/inClass/',
 command => '/usr/bin/docker run -it -d -p 8083:8080
edureka/inclass'
 }
}
