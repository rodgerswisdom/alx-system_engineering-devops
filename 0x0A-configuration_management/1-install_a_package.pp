# Puppet manifest to install Flask version 2.1.0 with specific Werkzeug version from pip3

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['werkzeug'],  # Ensure Werkzeug is installed before Flask
}

package { 'werkzeug':
  ensure   => '2.1.1',  # Specify the version of Werkzeug required by Flask
  provider => 'pip3',
}

