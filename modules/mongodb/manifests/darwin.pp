class mongodb::darwin {
  package { "mongodb":
    ensure   => installed,
    provider => homebrew
  }
}
