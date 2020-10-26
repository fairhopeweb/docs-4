---
description: Learn more about how Budibase creates row to row relationships
---

# Relationships

This section covers one of the more complex topics of your Budibase web app, the ability to create relationships between different rows. It is important to note that when a relation between two rows is formed these two particular rows become joined, rather than any particular fields in the rows being joined. The relationship is bi-directional, in that when it is created each row will have a relation to the other one. A row is also allowed to relate to many rows, meaning that many to many relationships can be created in your web app \(if required\).

#### Creating a relationship column

The process of creating a relationship column allowing rows in two different [tables](../../tables/) to be linked is quite simple.

1. First create/pick two tables that the relationship should be formed between.
2. Make sure that in both tables there is a column defined which can be used for display purposes, when creating this column make sure to set it with the _Display column_ toggle.
3. Click the _Create new column_ button in either of the two tables and select the _Relationship_ data type from the drop down.
4. Here you will need to select two options, the [table](../../tables/) which this column relates to and the name of the relationship column in the other [table ](../../tables/)as well. The example coming up should explain why it is necessary to name the column in the other [table](../../tables/).
5. At this point you will now have a relationship formed between the two [tables](../../tables/)! If you create a [row ](../../tables/rows.md)in one of the [tables](../../tables/), then go to the other [table ](../../tables/)and create a [row ](../../tables/rows.md)you should see the first [row ](../../tables/rows.md)that was created as an option in the relationship multi-select.

#### Using relationships

This section covers how to create and update relationships in relation to the [tables](../../tables/) and you might be wondering how to actually use them. This is for a different topic and has been covered in the [Design - relationships section]().

#### Coming up

In the next section we will cover an example of relationships, how to build them and the various types that can be modelled.

