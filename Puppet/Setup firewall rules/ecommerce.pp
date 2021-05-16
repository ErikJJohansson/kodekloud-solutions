class { 'firewalld': }

class firewall_node1 {
  firewalld_port { 'Open port 8081 for App Server 1':
    ensure   => present,
    zone     => 'public',
    port     => 8081,
    protocol => 'tcp',
  }
  exec { 'reload fw':
    command => '/usr/bin/firewall-cmd --reload',
  }
}

class firewall_node2 {
  firewalld_port { 'Open port 9004 in the public zone':
    ensure   => present,
    zone     => 'public',
    port     => 9004,
    protocol => 'tcp',
  }
  exec { 'reload fw':
    command => '/usr/bin/firewall-cmd --reload',
  }
}

class firewall_node3 {
  firewalld_port { 'Open port 8091 in the public zone':
    ensure   => present,
    zone     => 'public',
    port     => 8091,
    protocol => 'tcp',
  }
  exec { 'reload fw':
    command => '/usr/bin/firewall-cmd --reload',
  }
}
