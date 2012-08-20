class utility::darwin {
  package { "htop-osx":
    ensure   => present,
    provider => homebrew
  }

  package { "tig":
    ensure   => present,
    provider => homebrew
  }
}
