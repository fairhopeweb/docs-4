---
description: Adding and managing Budibase users
---

# Users

One of the core pieces of data in your Budibase app is its users. Users are currently managed as a data table, this will be the first table you are presented with when you make a new Budibase app. By standard Budibase users have three columns:

1. Status - whether the use is active or not, an inactive user cannot log into the platform.
2. RoleId - the user's role, this is used to determine their level of access to screens, tables and so on - the core of Budibase access control.
3. email - the email address of the user which acts as their username.

The user table acts exactly like any other table, you can create new columns and relationships to it as needed by your data structure. There are only a few differences with it:

1. Auto columns \(created by and updated by\) will be automatically linked to the user table - you can view them by showing the auto columns \(hidden by default\).
2. There is an option to manage roles from the user table, this allows creating new roles if more levels are required.
3. There is a hidden column, the user password, which you will be able to input to when creating a new user. Once input this cannot be retrieved, the password is hashed and the system will never return it; this is why there is no password column.
4. You cannot delete or edit the core user columns, the system is dependent on their existence.

