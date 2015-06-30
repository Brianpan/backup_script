#!/bin/bash
echo "show all tables"
mysql -u root -p"$(cat pw)" << EOF
USE articles;
SHOW TABLES;
EXIT
EOF

echo "Start dump database articles"
date=$(date '+%Y%m%d')
name='_articles.sql'
file_name=$date$name
echo $file_name
mysqldump -u root -p"$(cat pw)" articles> ~/"$file_name" 
echo "Finish dump database"