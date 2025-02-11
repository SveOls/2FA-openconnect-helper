# First runs openconnect to get the cookie. 
#
# this is grepped to find the cookie. 
#
# 'xargs -I {}' lets it be passed to the next command.
#
# sudo openconnect is then used to actually connect, because openconnect needs privileges.
#
# This is a workaround for 2FA requiring a browser, which cannot be opened by root, which openconnect needs. 

openconnect $1 --useragent=AnyConnect --cookieonly | grep 'openconnect_strapkey=' | xargs -I {} sudo openconnect $1 --useragent=AnyConnect --cookie="{}"
