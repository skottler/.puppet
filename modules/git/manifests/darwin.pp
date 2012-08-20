class git::darwin {
  package { "git":
    ensure   => present,
    provider => homebrew
  }
}
