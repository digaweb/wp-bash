# Wordpress Scripts
Scripts assume you have ~/.my.cnf set up with the following:
```
[client]
user=root
password="yourpassword"
```

# dumpdbs.sh
Grabs a backup of all databases

# pass-update.sh
This scripts grabs the list of databases and asked for a selection then
changes all the wordpress user's passwords, emails it to them and creates
a local txt file with all info.
