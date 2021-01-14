### To set up the database

Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:
```
CREATE DATABASE bookmark_manager_test;
```

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
rackup -p 3000
```


To view bookmarks, navigate to `localhost:3000/bookmarks`.

### To run tests:
