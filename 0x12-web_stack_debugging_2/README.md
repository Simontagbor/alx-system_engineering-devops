# 0x12. Web stack debugging #2
` DevOps `, ` SysAdmin `, ` Scripting `, ` Debugging `
I used this project to practice debugging techniques that are usefull for maintaining a healthy webstack.

## Outcomes
	* Learned how to create and use priviliged users similar to the `superuser` *root*
	* Changed the default behaviour of NGINX webservers running as `root` to instead run as a less privilleged user,`nginx`.
	* I understood the need to secure the server by ensuring that fewer processes ran as root, this also applies to general users.

## Tasks

### 0. Run software as another user
in this task i wrote a simple bash script that runs a software as another user.

#### Output of the Script
```
root@ubuntu:~# whoami
root
root@ubuntu:~# ./0-iamsomeoneelse www-data
www-data
root@ubuntu:~# whoami
root
root@ubuntu:~#
```
### 1. Run Nginx as Nginx
I fixed the server so that Nginx runs as the less privilleged `nginx`
