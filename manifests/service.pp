class fail2ban::service (
    String $service_name = $::fail2ban::service_name,
    String $service_ensure = $::fail2ban::service_ensure,
    Boolean $service_enable = $::fail2ban::service_enable,
    Boolean $service_hasstatus = $::fail2ban::service_hasstatus,
    Boolean $service_hasrestart = $::fail2ban::service_hasrestart,
 

) {

    service { '$service_name': 
      ensure => $service_ensure,
      enable => $service_enable,
      hasrestart => $service_hasrestart,
      hasstatus => $service_hasstatus, 
       }
}
