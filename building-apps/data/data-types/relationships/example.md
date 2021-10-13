---
description: Building a relationship example
---

# Example

In this example, we will be creating a web app for tracking students, teachers, parking spots for teachers and classes in a school - specifically how they relate to each other.

Specifically, we are going to break these down into the three relationship types that can be modeled with Budibase. Below we will map out the relationships that we are going to create, first describing them then walking through how to build them.

## One to one

![](<../../../../.gitbook/assets/image (6).png>)

The first relationship type we can model in Budibase is the most basic of types, linking two rows to each other. In this case, a Teacher is assigned a single parking spot and that parking spot can only be used by a single teacher.

## One to many

![](<../../../../.gitbook/assets/image (4).png>)

The second relationship we can model in Budibase is one of the most common, linking a single [row](broken-reference) to many other [rows](broken-reference). Here we can see that a class can only be taught by a single teacher however a teacher is capable of teaching many different classes.

## Many to many

![](<../../../../.gitbook/assets/image (5).png>)

The last relationship we can model is arguably one of the most complexes but again very common in real-life systems. Here we can see that students are able to take many classes and each class can have many different students in it.

## Building it in Budibase

To create this in Budibase all we need to do is:

1. Create the four [tables](../../tables/), students, classes, teachers, and parking spots. In each of these, we will initially create a display text [column](broken-reference) and mark these as the _Display column -_ for example, N_ame_ or _Subject_.
2. First, we will create the teacher to parking spot relationship, starting in the teacher [table](../../tables/) we create a relationship type [column](broken-reference), call it `ParkingSpot` and set the [table](../../tables/) to parking spots - then name the [column ](broken-reference)in the other [table ](../../tables/)`Teacher`.
3. Second, we create the teacher to classes relationship, hopefully, at this point, it should be clear how this is done. Simply create a relationship from the teacher [table](../../tables/) to the class [table](../../tables/), name the [column](broken-reference) `Classes` and in the other [table](../../tables/) call the [column](broken-reference) `Teacher`.
4. Lastly, we create the students to classes relationship, the same as before but set the relationship [table](../../tables/) to classes, call the [column ](broken-reference)in the students [table ](../../tables/)`Classes` and call the [column ](broken-reference)in the other [table ](../../tables/)`Students`.

As you can see by creating three relationship columns we were able to make a fairly complex web of relationships, which can now be easily managed when creating/updating [rows](broken-reference) in any of the [tables](../../tables/).

## Video demonstration

Based on the example above here is a video showing how easy it is to create in the Budibase Builder!

{% embed url="https://youtu.be/QLZOYcf_Lmk" %}

