<Directory "/Users/blawless5/Development/penciledin/bdl">
	Options All
	AllowOverride All

	AddType text/html html
	AddHandler server-parsed html
	AddType text/html inc
	AddHandler server-parsed inc

	Order Deny,Allow
	Allow from all
	Allow from localhost
	Allow from 127.0.0.1
	Allow from .apple.com
	Allow from .webassociates.com
</Directory>

NameVirtualHost *:80
<VirtualHost *:80>
  DocumentRoot /Users/blawless5/Development/penciledin/bdl
  ServerName pi.benjaminlawless.com
</VirtualHost>

Listen 8198
NameVirtualHost *:7001
<VirtualHost *:7001>
  DocumentRoot /Users/blawless5/Development/penciledin/bdl
  ServerName *:7001
</VirtualHost>
