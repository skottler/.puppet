class git {
  case $::operatingsystem {
    Darwin: {
      class { "git::darwin": }
    }
    centos,fedora,rhel: {
      class { "git::redhat": }
    }
  }
}
