# 2FA-openconnect-helper
Minimal bash script that lets you use 2FA with openconnect in some circumstances. 

Specifically, when you need to run openconnect as root while also needing it to open a browser for 2FA. 

NOTE: I am an amateur when it comes to bash and linux. I have not tested this on any other machine or vpn than my computer and the vpn I connected to. I have only posted this because figuring it out was a pain and it would've been helpful for me. If it does not work for you, I at least hope it helps you find a solution.

Usage: 

./vpnhelper.sh [ip]

./vpnhelper.sh my.university.foo

After completing 2FA, it will ask for your password to run the last command as sudo.

Original idea from ttshaw1:

https://bbs.archlinux.org/viewtopic.php?id=292344
