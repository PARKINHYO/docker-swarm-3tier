#!/bin/sh
chgrp -R mariadb $1
chmod -R g+rw $1
find $1 -type d -exec chmod g+x {} +
