class git::redhat {
  package { "git-core":
    ensure => present
  }
}
