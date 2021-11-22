---
description: >-
  A record detail screen, that displays a collection of related records on the
  same screen.
---

# Master-detail

For this example, we will use the following data model:

`One Project has many Tasks`

On my "Project Detail" screen, I will list all tasks belonging to the current Project.

We will start with the standard record-detail screen. So...

1. Click on the "Repeater" component in the left-hand panel
2. Add a new "Data Provider" component. This will place the data provider inside the repeater
3. Set the Data Provider's data source to \`Relationship > Repeater.Projects.Tasks\`
4. Add a table underneath.

![](<../.gitbook/assets/image (24).png>)\


That's it! Your new table should now only show tasks that belong to the current project.

\
