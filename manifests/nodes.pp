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

  class { 'java':
    distribution => 'jdk',
    version      => 'present'
  }

  eclipse { 'eclipse': }

  eclipse::plugin { 'eclipse-adt':
    pluginrepositories => ['https://dl-ssl.google.com/android/eclipse/', 'http://download.eclipse.org/releases/kepler/']
  }

  eclipse::plugin { 'gradle':
    pluginrepositories => ['http://dist.springsource.com/release/TOOLS/gradle']
  }

  wget::fetch { "libgdx setup":
    source      => 'https://bitly.com/1i3C7i3'
    destination => '/opt/gdx-setup.jar',
    timeout     => 0,
    verbose     => false,
  }

  include android

  android::platform { 'android-16': }

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
