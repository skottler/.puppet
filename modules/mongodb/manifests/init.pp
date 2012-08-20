class mongodb {
  case $::operatingsystem {
    Darwin: {
      class { "mongodb::darwin": }
    }
    centos,fedora,rhel: {
      class { "mongodb::redhat": }
    }
  }
}
