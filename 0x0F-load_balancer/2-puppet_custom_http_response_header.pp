# Install HAProxy package
package { 'haproxy':
  ensure => 'installed',
}

# Configure HAProxy
file { '/etc/haproxy/haproxy.cfg':
  ensure  => 'file',
  content => '
    global
        daemon
        maxconn 256

    defaults
        mode http
        timeout connect 5000ms
        timeout client 50000ms
        timeout server 50000ms

    frontend http-in
        bind *:80
        default_backend servers

    backend servers
        balance roundrobin
        server 103565-web-02 100.26.154.56 check port 80
        server 103565-web-02 100.26.163.22 check port 80
  ',
  require => Package['haproxy'],
}

# Restart HAProxy service
service { 'haproxy':
  ensure    => 'running',
  enable    => true,
  subscribe => File['/etc/haproxy/haproxy.cfg'],
}

