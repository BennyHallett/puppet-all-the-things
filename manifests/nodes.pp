node default {
  include git
  include chrome
  include gimp
  include hosts
  include dotfiles
  include keepassx
  include vim

  include rvm
  rvm::system_user { benny: ; }
  rvm_system_ruby {
    'ruby-2.1.0':
      ensure          => present,
      default_use     => true;
  }
  rvm_gem {
    'ruby-2.1.0/bundler':
      ensure      => latest,
      require     => Rvm_system_ruby['ruby-2.1.0'];
  }
}
