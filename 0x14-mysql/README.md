# 0x14. MySQL
` DevOps `,` SysAdmin `,` MySQL `

## Tasks
### 0. Install MySQL
Install MySQL on server web-01 and web-02
Requirements:
	MySQL distribution must be 5.7.x

###  Let us in!
For this task, I created a mysql user named `holberton_user` on two web servers; `web-01` and `web-02` with the host name set to localhost

I then grant the user with only the needed permisions

the following output was produced:
```
ubuntu@229-web-01:~$ mysql -uholberton_user -p -e "SHOW GRANTS FOR 'holberton_user'@'localhost'"
Enter password:
+-----------------------------------------------------------------+
| Grants for holberton_user@localhost                             |
+-----------------------------------------------------------------+
| GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost' |
+-----------------------------------------------------------------+
ubuntu@229-web-01:~$
```
### Create A Database Named tyrell_corp
I created a databse that will be replicated on web-02.
the databse had only one entry in a two column table.

### Create New User for the Replica server on Web-01
On the web-01, i created a user named `replica_user` and set the host name to `%`. I then granted the new user the appropriate replication previleges.

### Set up a Primary-Replica infrastructure using MySQL
To put into practice the concept of redundancy, i set up two servers; `web-01` and `web-02` for synchronization of the database `tyrell_corp` hosted in the primary database on `web-01` server.

### Set up Database Back up
I wrote a bash script to generate a MySQL dump which could allow me to back up the data on a different server at a different location.

## Learning Outcomes
I learned about the main role of databases,the benefits of having a replication and backup infrastructure  set up.
