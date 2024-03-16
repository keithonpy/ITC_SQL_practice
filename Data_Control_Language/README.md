# Data Control Language

## Grant specific privileges to a user or role. 
It allows you to specify which operations (such as SELECT, INSERT, UPDATE, DELETE) a user or role can perform on a particular database object (like a table).
```
GRANT [SELECT, INSERT, UPDATE, DELETE] ON [tablename] TO [username]
```

## Revokes previously granted privileges from a user or role.
It removes specific permissions previously granted using the `GRANT` command.
```
REVOKE [SELECT, INSERT, UPDATE, DELETE] ON [tablename] FROM [username]
```
