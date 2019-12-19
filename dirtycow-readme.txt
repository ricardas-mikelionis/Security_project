Dirtycow exploit CVE-2015-3306CVE-2016-5195

Based on https://github.com/dirtycow/dirtycow.github.io/blob/master/dirtyc0w.c

This requires ubuntu with kernel older than 4.4.0.164.

Pre-requisites:
1. Login with root user to VM.
2. Install gcc
3. (Optional) Execute dirtycow_victim.sh script if dirtycow freezes the machine.
4. Create a simple local user.

Execution:
1. Login to the VM with local user.

2. (Optional) mkdir 'foldername' to hold the files required for this exploit

3. Download the script.

4. Run 'bash dirtycow-attacker.sh'

5. Check that user is in the list for 'sudo' users

6. Logout and login to the machine.

7. Execute 'sudo -i' and enter the password for the local user.
