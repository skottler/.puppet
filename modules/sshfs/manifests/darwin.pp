class sshfs::darwin {
  package { "fuse4x":
    ensure   => present,
    provider => homebrew
  }

  package { "fuse4x-kext":
    ensure   => present,
    provider => homebrew
  }

  package { "sshfs":
    ensure   => present,
    provider => homebrew,
    require  => [ Package["fuse4x"], Package["fuse4x-kext"] ]
  }
}
