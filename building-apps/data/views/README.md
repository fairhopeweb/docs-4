---
description: Learn more about views within Budibase
---

# Views

Views are virtual tables. I understand this may seem confusing, but it is the best description, and hopefully you'll understand why after reading the following docs.

When you create a View within Budibase, it presents you with all the data from its linked Table. This provides you with canvas to manipulate your data without changing the data within the original table. This is crucial, as it protects your original data. It also allows you to create:

1. [Filters](filters.md)
2. [Groups](groups.md)
3. [Calculations](calculations.md)

When designing your UI, you can reference data from your Views. So, if you have a table of sales people and their total sales, you can create a View and a Calculation which gives you the total sales of all sales people. You can then reference the data from this View in the design section of Budibase, and display the answer to the calculation.

## How to create a new view

{% hint style="info" %}
You must have a Table, before you can create a View
{% endhint %}

To create a new table, click the `create new view` button, and give it a name.

By default, a view will display all the data in your table. You should add a filter and/or a calculation to change data is displayed.

{% embed url="https://youtu.be/oxSW6fqjLOQ" %}



