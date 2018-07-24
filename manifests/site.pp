node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
node 'ip-172-31-44-1.eu-west-1.compute.internal' {
  include role::master_server
}
node /^web/ { 
  include role::app_server
}
node /^db/ {
  include role::db_server
}
