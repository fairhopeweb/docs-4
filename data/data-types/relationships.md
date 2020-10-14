---
description: Learn more about how Budibase creates row to row relationships
---

# Relationships

This section covers one of the more complex topics of your Budibase web app, the ability to create relationships between different rows. It is important to note that when a relation between two rows is formed these two particular rows become joined, rather than any particular fields in the rows being joined. The relationship is bi-directional, in that when it is created each row will have a relation to the other one. A row is also allowed to relate to many rows, meaning that many to many relationships can be created in your web app \(if required\).

#### Creating a relationship column

The process of creating a relationship column allowing rows in two different [tables](../tables/) to be linked is quite simple.

1. First create/pick two tables that the relationship should be formed between.
2. Make sure that in both tables there is a column defined which can be used for display purposes, when creating this column make sure to set it with the _Display column_ toggle.
3. Click the _Create new column_ button in either of the two tables and select the _Relationship_ data type from the drop down.
4. Here you will need to select two options, the [table](../tables/) which this column relates to and the name of the relationship column in the other [table ](../tables/)as well. The example coming up should explain why it is necessary to name the column in the other [table](../tables/).
5. At this point you will now have a relationship formed between the two [tables](../tables/)! If you create a [row ](../tables/rows.md)in one of the [tables](../tables/), then go to the other [table ](../tables/)and create a [row ](../tables/rows.md)you should see the first [row ](../tables/rows.md)that was created as an option in the relationship multi-select.

#### Example

In this example we will be creating a web app for tracking students, teachers and classes in a school - specifically how they relate to each other.

Here is a diagram depicting the data and the model which we are going to build in our Budibase web app.

![Student, class and teacher relationships](../../.gitbook/assets/basic-erd-students%20%284%29.png)

I know this might look a little scary but I'll give a quick explanation of this and hopefully it'll all make sense!

1. Students have two relationships, a class they are part of and teachers they are favoured by. A student can be favoured by zero to many teachers but can only be in one class at a time.
2. A class has two relationships, a group of students that make up the class and the teacher which currently takes that class. A class can have zero or many students in it at any one time but it only has one teacher.
3. A teacher, which has a list of students they like and the class which they are currently teaching. A teacher can only teach one class at a time but they may favour any student in the whole school.

The relationships here are quite complex and you can see there are three types, a one to one, a one to many and a many to many - these can all be handled with Budibase relationships.

To create this in Budibase all we need to do is:

1. Create the three [tables](../tables/), students, classes and teachers. In each of these we will initially create the name text [columns ](../tables/columns.md)and mark these as the _Display column_.
2. First we will create the student to teacher relationship, starting in the student [table](../tables/) we create a relationship type [column](../tables/columns.md), call it `favouredBy` and set the [table](../tables/) to teachers - name the [column ](../tables/columns.md)in the other [table ](../tables/)`favouriteStudents`.
3. Second we create the student to class relationship, the same as before but set the relationship [table](../tables/) to classes, call the [column ](../tables/columns.md)in the students [table ](../tables/)`class` and call the [column ](../tables/columns.md)in the classes [table ](../tables/)`students`.
4. Lastly we create the teacher to class relationship, hopefully at this point it should be clear how this is done, simply create a relationship from the teacher [table](../tables/) to the class [table](../tables/), name the [column](../tables/columns.md) `class` and in the other [table](../tables/) call the [column](../tables/columns.md) `teacher`.

As you can see by creating three relationship columns we were able to make a fairly complex web of relationships, which can now be easily managed when creating/updating [rows](../tables/rows.md) in any of the [tables](../tables/).

#### Using relationships

So in this section we've covered how to create and update relationships, at this point your web app will be creating data relationships everywhere they are needed! How to view this relationships however is another topic, which has been covered in the [Design - relationships section](../../design/relationships.md).

#### Video demonstration

Based on the example above here is a video showing how easy it is to create in the Budibase Builder!

