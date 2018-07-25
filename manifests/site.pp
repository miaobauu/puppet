node default {
package { 'openssh':
  ensure  => installed,
  name    => $ssh,
  require => Package['openssl'],
}
}
node 'ip-172-31-44-1.eu-west-1.compute.internal' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Sto cazzo ${fqdn}\n",
    owner   => 'root',
  }
}
node /^web/ { 
  include role::app_server
}
node /^db/ {
  include role::db_server
}
node 'minetest.puppet.vm': {
  include role::minecraft_server
}
