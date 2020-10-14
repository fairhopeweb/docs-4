---
description: Learn more about data types in Budibase.
---

# Data Types

When creating a column in Budibase a data type must be specified for the column. This section will cover the different data types, the use cases for them and how they're configured.

Below is a list of currently available data types for your web apps:

1. Text - the most basic data type, this is as you would expect, text in any format. The length of the text can be validated with the "max length" option.
2. Options -  Similar to a text but in this case a set of options can be specified, when a user is creating/updating a [row](../tables/rows.md) field will appear as the options that have been specified in the form of a dropdown.
3. Number  - another very basic data type, this can hold a decimal number and the range can be specified with the "min" and "max" value options.
4. True/False - for use when an "yes/no" like option is required, when a user is creating/updating a [row](../tables/rows.md) this filed will appear as a checkbox.
5. Date/Time - a data type for recording dates and times, these will always be recorded in the form of an [ISO 8601 date string](https://en.wikipedia.org/wiki/ISO_8601). When a user is creating/updating a [row](../tables/rows.md) this field will appear as a date picker. The upper and lower limits for this time can be validated using the "earliest" and "latest" options when creating the [column](../tables/columns.md).
6. Attachment - used for storing files, like images or documents, an attachment field can store many different files at the same time, a single [row](../tables/rows.md) can contain as many files as are related to it. When creating/updating a field of this type a file drop zone will be used.
7. Relationship - One of the more complex concepts, this allows making a link between different rows in two different tables. Row to row relationships can be compared to something like a join statement in SQL, in that they are ideal for creating many-to-many relationships.  When creating/updating a row this field will appear as a multi-selection that allows selecting any number of rows.

