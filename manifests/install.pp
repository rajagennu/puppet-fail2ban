class fail2ban::install (
    String $ensure = $::fail2ban::ensure,
    String $package_name = $::fail2ban::package_name,
 
 ) {
 
 package { '$package_name':
     ensure => $ensure,
     name   => $package_name,
     }
 }
