class utility::darwin {
  package { "htop-osx":
    ensure   => present,
    provider => homebrew
  }

  package { "tig":
    ensure   => present,
    provider => homebrew
  }

  package { "tree":
    ensure   => present,
    provider => homebrew
  }

  package { "ctags":
    ensure   => present,
    provider => homebrew
  }
}
