class fail2ban::params {
    $ensure            = 'present'
    $package_name      = 'fail2ban'
    $config_path        = '/etc/fail2ban/fail2ban.local'
    $config_jail_path = '/etc/fail2ban/jail.local'
    $config_ensure      = 'file'
    $config_mode        = '0644'
    $config_owner        = 'root'
    $config_group        = 'root'
    $service_name       = 'fail2ban'
    $service_ensure      = 'running'
    $service_enable         =  true
    $service_hasstatus   = true
    $service_hasrestart     = true     
}