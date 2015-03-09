# Class: apache
#
# This class installs Apache
#
# Actions:
#   - Install Apache
#   - Manage Apache service
#   - Create default html page
#
class apache {
  package { 'httpd':
    ensure => present,
  }

  service { 'httpd':
    ensure  => running,
    require => Package['httpd'],
  }

  file { '/var/www/html/index.html':
    ensure  => file,
    source  => 'puppet:///modules/apache/index.html',
    require => Package['httpd'],
  }
}
