class fail2ban::config (

String $config_path      =   $::fail2ban::config_path,
String $config_ensure   =   $::fail2ban::config_ensure,
String $config_mode     =   $::fail2ban::config_mode,
String $config_owner    =   $::fail2ban::config_owner,
String $config_group    =   $::fail2ban::config_group,
String $config_jail_path = $::fail2ban::config_jail_path,

) {

file { 'Fail2ban configuration file':
      ensure => $config_ensure,
      path => $config_path,
      content => file('fail2ban/fail2ban/fail2ban.local'),
      owner => $config_owner,
      group => $config_group,
      mode => $config_mode,
      }
file { 'jail.local configuration file':
      ensure => $config_ensure,
      path => $config_jail_path,
      content => file('fail2ban/fail2ban/jail.local'),
      owner => $config_owner,
      group => $config_group,
      mode => $config_mode,
      }
}
