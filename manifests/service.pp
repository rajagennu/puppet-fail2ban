class fail2ban::service (
    String $service_name = $::fail2ban::service_name,
    String $service_ensure = $::fail2ban::service_ensure,
    String $service_enable = $::fail2ban::service_enable,
    String $service_hasstatus = $::fail2ban::service_hasstatus,
    String $service_hasrestart = $::fail2ban::service_hasrestart,
 

) {

    service { '$service_name': 
      ensure => $service_ensure,
      enable => $service_enable,
      hasrestart => $service_hasrestart,
      hasstatus => $service_hasstatus, 
       }
}