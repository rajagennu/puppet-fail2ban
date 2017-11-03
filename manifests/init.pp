class fail2ban (
    String $ensure = $::fail2ban::params::ensure,
    String $package_name = $::fail2ban::params::package_name,
    String $config_path = $::fail2ban::params::config_path,
    String $config_jail_path = $::fail2ban::params::config_jail_path,
    String $config_ensure =  $::fail2ban::params::config_ensure,
    String $config_mode = $::fail2ban::params::config_mode,
    String $config_owner = $::fail2ban::params::config_owner,
    String $config_group = $::fail2ban::params::config_group,
    String $service_name = $::fail2ban::params::service_name,
    String $service_ensure = $::fail2ban::params::service_ensure,
    String $service_enable = $::fail2ban::params::service_enable,
    String $service_hasstatus = $::fail2ban::params::service_hasstatus,
    String $service_hasrestart = $::fail2ban::params::$service_hasrestart,
) inherits ::fail2ban::params {
class { '::fail2ban::install':}
    -> class { '::fail2ban::config': }
    ~> class { '::fail2ban::service': } 
}