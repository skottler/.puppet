class zsh::darwin {
  package { "zsh":
    ensure   => present,
    provider => homebrew
  }
}
