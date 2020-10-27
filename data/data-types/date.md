---
description: The date data type stores dates.
---

# Date/time

The date/time data type stores dates. This is important when using components, or displaying information that relies on time/dates. A calendar component, for example, will utilize the date field. With Budibase, you can also provide an earliest and latest date, within your date/time data type. This allows you to add additional validation so dates added have to fall after, before or in between the earlier and latest dates. The date's within Budibase comply to ISO8601 formating - `2020-09-24T13:12:04.622Z`. Thankfully, we have a date picker which removes the need for data entry and makes life easier.



#### Creating a date/time column

The process for creating a date column takes a few seconds.

{% embed url="https://www.loom.com/share/a417d523bf0e47ecae4842a78955c6ce" %}



1. First, click the Create New Column button
2. Give your column a name - we used Date Started in the video above.
3. Choose date/time as your data type
4. Add an earliest or latest date - we added an earliest date 
5. Click Save Column
6. Add data to your new column by [adding rows](../tables/rows.md)

#### 

#### Using the date/time data type

In the Design section, you can pull in information from your date/time column, using the [Repeater](../../design/components/repeater.md) component and [binding](../../design/binding.md).

{% embed url="https://www.loom.com/share/c464f668f252469d8927f7ef782a245d" %}





### 

