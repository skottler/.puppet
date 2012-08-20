class cassandra::darwin {
  package { "cassandra":
    ensure   => present,
    provider => homebrew
  }
}
