#!/bin/bash

databases=`mysql -e "SHOW DATABASES;" | tr -d "| " | grep -v Database`

for db in $databases; do
    if [[ "$db" != "information_schema" ]] && [[ "$db" != "performance_schema" ]] && [[ "$db" != "mysql" ]] && [[ "$db" != _* ]] && [[ "$db" != "cphulkd" ]] && [[ "$db" != "eximstats" ]] && [[ "$db" != "leechprotect" ]] && [[ "$db" != "logaholicDB_cent6base_cpanel" ]] && [[ "$db" != "modsec" ]] && [[ "$db" != "mysql" ]] && [[ "$db" != "roundcube" ]] && [[ "$db" != "whmxfer" ]]; then
        echo "Dumping database: $db"
        mysqldump --databases $db > $db.sql
    fi
done
