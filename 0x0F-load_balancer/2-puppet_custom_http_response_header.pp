# Install package
package { 'nginx':
  ensure => installed,
}
# configure Nginx
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => '
    server {
      listen 80;
      server_name 103565-lb-01;

      location / {
        proxy_pass http://54.157.187.34;
        proxy_set_header X-Served-By $hostname;
      }

      location /redirect_me {
        return 302 http://google.com;
      }

      error_page 404 /404.html;
      location = /404.html {
        root /usr/share/nginx/html;
        internal;
      }
    }
  ',
}
# create custom 404 page
file { '/usr/share/nginx/html/404.html':
  ensure  => present,
  content => "Ceci n'est pas une page\n",
}

# Restart Nginx
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default', '/usr/share/nginx/html/404.html'],
}
