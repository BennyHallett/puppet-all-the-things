class postgres {
  package { 'postgresql':
    ensure => present
  }
  package { 'postgresql-contrib':
    ensure => present
  }
  package { 'libpq-dev':
    ensure => present
  }
}
