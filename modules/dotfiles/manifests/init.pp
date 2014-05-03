class dotfiles {
  file { '/home/benny/.vimrc':
    ensure      => present,
    owner       => "benny",
    source      => "puppet:///modules/dotfiles/vimrc"
  }
}
