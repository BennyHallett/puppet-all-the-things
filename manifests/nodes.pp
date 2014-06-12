node default {
  include git
  include chrome
  include gimp
  include hosts
  include dotfiles
  include keepassx
  include vim
  include postgres

  include nodejs
  include rvm

  #class { 'pathogen':
  #  user_home => '/home/benny'
  #}

  rvm::system_user { benny: ; }
  rvm_system_ruby {
    'ruby-2.1.0':
      ensure          => present,
      default_use     => true;
  }
  rvm_system_ruby {
    'ruby-1.9.3':
      ensure          => present
  }
  rvm_gem {
    'ruby-2.1.0/bundler':
      ensure      => latest,
      require     => Rvm_system_ruby['ruby-2.1.0'];
  }
  rvm_gem {
    'ruby-1.9.3/bundler':
      ensure      => latest,
      require     => Rvm_system_ruby['ruby-1.9.3'];
  }
}
