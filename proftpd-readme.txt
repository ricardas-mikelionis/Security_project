ProFTPD exploit CVE-2015-3306

Based on https://github.com/t0kx/exploit-CVE-2015-3306
ProFTPd 1.3.5 - (mod_copy) Remote Command Execution exploit and vulnerable container

Notes:
1. Login with root user to VM.

Execution:
1. Create ubuntu-16.04 test machine with 3GB disk space or pick ubuntu-16.04_more_space 
1.1 onetemplate instantiate "ubuntu-16.04_more_space" --name cve-2015-3306 --user {user} --endpoint https://grid5.mif.vu.lt/cloud3/RPC2

2. Victim: Clones git repository with exploit. It will create image for running container. With final command it will run docker container
2.1 execute proftpd-victim.sh
2.2 docker run -d -p 21:21 -p 80:80 vuln/cve-2015-3306 or docker run --rm -it -p 21:21 -p 80:80 vuln/cve-2015-3306

3. Attacker: It assuming that git repository with exploit is already cloned. It should have been done in 2.1 step
3.1 execute proftpd-attacker.sh
3.2 python exploit.py --host 127.0.0.1 --port 21 --path "/var/www/html/"
