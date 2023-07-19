# 0x0B. SSH
` DevOps `, ` SSH `, ` SysAdmin `, ` Security `

## Tasks
### 0. Use a private key
I wrote a Bash script that uses `ssh` to connect to a server using the private key with the user ubuntu.

Requirements:
	* Only use ssh single-character flags
	* You cannot use `-l`
	* You do not need to handle the case of a private key protected by a passphrase

### 1. Create an SSH key pair
I Wrote a simple bash script that creates an RSA key pair.

### 2. Client configuration file
I configured ssh client to meet these requirements:
	* SSH client must be configured to use the private key ~/.ssh/school
	* SSH client must be configured to refuse to authenticate using a password

### 3. Let me in!
I Added a given SSH public key provided to my web server so that a script can use it to  connect using the ubuntu user.

### Client configuration file with Puppet
I used `Puppet` to make changes to SSH configuration file. 
