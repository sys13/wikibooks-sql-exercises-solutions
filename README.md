Doing exercises from https://en.wikibooks.org/wiki/SQL_Exercises

It uses sqlite3, so on linux `sudo apt install sqlite3`

Create a DB and insert data, first create a `create.sql` file with the create and insert data, then run:

```
sqlite3 store.db < create.sql
```

To Run a SQL file:

```
sqlite3 -column -header store.db < 1.sql
```

To create, say 20, sql files, run:

```
cd 1_computer_store
../createSqlFiles.sh 20
```
