class profile::base {
  user {'admin':
    ensure => present
  }
  ssh_authorized_key { 'root@${fqdn}':
  user => 'root',
  type => 'ssh-rsa',
  key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC7UkoaC5DF47ASPW+j3ESyN//YTD9vzVgwQFiQw2twAVHeeaNZNGjNMAtsLn5wdAvtE1j1pWgCY5yWycDZZWySzcXeYJiAQO+H/QVEsTb7xXq2ChimacEdRVe2FCvSP0WYROp0GeO7R6xbgT2L+oUtSS7IZjvJxfjiCwWLlZUGJ04Ux2KK7qXfSJcoU2P/Jkm/eyPa7LefApm6TDdCw6TGnXtjmgpqDTSdw+QXfFhPRnKO+vMrjoZYBn1hdWVd6hyuxzhllXk4o07FNCfwDkPYrXEc2j1IiSAb1BPV7XRaJwOm4sno/wfRB+kwUBIRYUVMCEE70PioH+lGe9Tik+hp',
  }
}
