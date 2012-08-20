class utility {
  case $::operatingsystem {
    Darwin: {
      class { "utility::darwin": }
    }
    centos,fedora,rhel: {
      class { "utility::redhat": }
    }
  }
}
