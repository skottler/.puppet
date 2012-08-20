class sshfs {
  case $::operatingsystem {
    Darwin: {
      class { "sshfs::darwin": }
    }
    centos,fedora,rhel: {
      class { "sshfs::redhat": }
    }
  }
}
