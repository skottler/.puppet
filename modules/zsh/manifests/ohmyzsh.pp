class zsh::ohmyzsh {
  include zsh::setup
  include zsh::params

  exec { "curl oh my zsh":
    command => "/usr/bin/curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh",
    unless  => "/bin/test -e ~/.oh-my-zsh",
    require => Package["zsh"]
  }

  file { ".zshrc":
    path      => $operatingsystem ? {
      Darwin  => "/Users/$zsh::params::user/.zshrc",
      default => "/home/$zsh::params::user/.zshrc"
    },
    ensure  => present,
    source  => "puppet:///modules/zsh/zshrc",
    require => Exec["curl oh my zsh"]
  }
}
