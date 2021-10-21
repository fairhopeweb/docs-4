---
description: >-
  How to display a list of items that have been assigned to the currently
  logged-in user
---

# Items assigned to me

In this example, we will display a list of tasks that are assigned to the currently logged in user.

You can import the file below into Budibase to see exactly how it's done:

{% file src="../.gitbook/assets/myitems-app.json" %}

Steps to create this app:

1. Create a table called "Tasks".
2. Create the "Assigned To" column. It's a relationship to the "Users" table, where `On User has many Tasks`
3. Create a new screen ("Create from scratch") - this is where we will display the tasks for the current user.&#x20;
4. Add a `Data provider `&#x20;
5. Set the `Data` setting to `Current User.Tasks`
6. Add a `Table` component inside the data provider.

That's it! You're new screen now has a table that displays only the tasks that are assigned to the logged in user.
