class bzr {
  case $::operatingsystem {
    Darwin: {
      class { "bzr::darwin": }
    }
    centos,fedora,rhel: {
      class { "bzr::redhat": }
    }
  }
}
