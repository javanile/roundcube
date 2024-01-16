#!/bin/bash

## Remove imap_host to enable input host on login form
sed -i "s/\(\$config\['imap_host'\] = \).*/\1'';/" /var/www/html/config/config.docker.inc.php
