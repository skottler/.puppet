class sshfs::redhat {
  package { "sshfs":
    ensure => present
  }
}
