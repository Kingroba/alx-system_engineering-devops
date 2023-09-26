#!/usr/bin/env bash

# Setup Nginx using Puppet configuration

# Install Nginx package
package {
    'nginx':
    ensure => installed,
}

# Create a basic index.html file
file {'/var/www/html/index.nginx-debian.html':
    content => 'Hello World!',
}

# Configure redirection in Nginx
file_line {'configure redirection':
    path  =>  '/etc/nginx/sites-available/default',
    after =>  'server_name _;',
    line  =>  "\n\tlocation /redirect_me {\n\t\treturn 301 https://youtu.be/dQw4w9WgXcQ;\n\t}\n",
}

# Ensure Nginx service is running
service {'nginx':
    ensure => running,
}

