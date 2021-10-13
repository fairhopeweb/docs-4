---
description: How to display user-specific data in Budibase
---

# Display user-related data

Often when building apps, we want to display data related to the user. This is pretty straightforward with Budibase. In the example below, we have created a simple to-do app. Two users have created to-dos, but we only want to show the to-dos relevant to the current user.

To do this, we would:

* [ ] Locate our to-dos table in the design section
* [ ] Click on the data provider (which tells our table what data to display)
* [ ] Select the data dropdown (in the settings panel)
* [ ] Under Relationships, select the Current.User\[table name]-Created By (see gif below)\


![](../.gitbook/assets/screen-recording-2021-09-15-at-12.55.10.gif)

The table will now only display data created by the current user.
