# Tasks #
## 0. Simple web stack
On a whiteboard, design a one server web infrastructure that hosts the website that is reachable via www.foobar.com. Start your explanation by having a user wanting to access your website.

### Requirements:

You must use:
* server
* web server (Nginx)
* application server
* application files (your code base)
* database (MySQL)
* domain name foobar.com configured with a www record that points to your server IP `8.8.8.8`

### [Link to My Design Solution 👨‍🏫](/0-simple_web_stack.jpg)


## 1. Distributed web infrastructure
On a whiteboard, design a three server web infrastructure that hosts the website www.foobar.com.

### Requirements:

You must add:
* 2 servers
* 1 web server (Nginx)
* 1 application server
* 1 load-balancer (HAproxy)
* 1 set of application files (your code base)
* 1 database (MySQL)


### [Link to My Design Solution 👨‍🏫](/1-distributed_web_infrastructure.jpg)


## 2. Secured and monitored web infrastructure
On a whiteboard, design a three server web infrastructure that hosts the website www.foobar.com, it must be secured, serve encrypted traffic, and be monitored.

### Requirements:

You must add:
* 3 firewalls
* 1 SSL certificate to serve www.foobar.com over HTTPS
* 3 monitoring clients (data collector for Sumologic or other monitoring services)

### [Link to My Design Solution 👨‍🏫](/2-secured_and_monitored_web_infrastructure.jpg)

## 3. Scale up
Readme
[Application server vs web server](https://intranet.alxswe.com/rltoken/toFi_SdFHyi2MaELB8ekqw)

Requirements:

You must add:
* 1 server
* 1 load-balancer (HAproxy) configured as cluster with the other one
* Split components (web server, application server, database) with their own server

### [Link to My Design Solution 👨‍🏫](/3-sacle_up.JPG)
