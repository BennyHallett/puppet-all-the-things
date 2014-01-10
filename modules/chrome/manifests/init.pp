class chrome {
  package { 'chromium-browser':
    ensure => present
  }
}
