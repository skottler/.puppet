class cassandra {
  case $::operatingsystem {
    Darwin: {
      class { "cassandra::darwin": }
    }
    centos,fedora,rhel: {
      class { "cassandra::redhat": }
    }
  }
}
