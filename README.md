# Perl5.26 + Apache2 + MySQL

## Getting Started
### common setting

    $ git clone https://github.com/kagepedia/docker-perl526-webapp
    $ cd docker-perl526-webapp
    $ docker-compose build
    $ dokcer-compose up -d
    $ docker exec -it <CONTAINER_ID> /bin/bash

### apache setting
change documentroot edit ```000-default.conf``` and ```default-ssl.conf``` files  
use cgi edit ```000-default.conf```

example.

    AddHandler cgi-script .cgi
    <Directory "/var/www/cgi-bin">
            AllowOverride None
            Require all granted
            Options +ExecCGI -MultiViews +SymLinksIfOwnerMatch
            Order allow,deny
            Allow from all
    </Directory>

apache2 restart

    $ service apache2 reload
    
### mysql setting
