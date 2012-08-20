class bzr::darwin {
  package { "bazaar":
    ensure   => present,
    provider => homebrew
  }
}
