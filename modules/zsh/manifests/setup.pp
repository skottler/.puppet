class zsh::setup {
  case $::operatingsystem {
    Darwin: {
      class { "zsh::darwin": }
    }
    centos,fedora,rhel: {
      class { "zsh::redhat": }
    }
  }
}
