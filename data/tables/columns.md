---
description: Learn more about columns within Budibase
---

# Columns

Columns are the vertical group of cells within your table. Another name for 'columns', is 'fields'. Columns organise your table's data into simple data types. A data type describes the structure and type of data required for columns. You can mark each column as required or not required. Columns marked as required must be completed when created a new row.

{% hint style="info" %}
Example: A 'Phone Number' Column, will use the 'Number' type.
{% endhint %}

## How to create a new Column

To create a new column:

* [ ] Click the `create new column` button
* [ ] Give your new column a name
* [ ] Select a column type
* [ ] Click save

{% embed url="https://www.loom.com/share/00339ad805124ceb8e63d34f04f144a0" %}

## Data types

### **Text**

The text data type stores text, including numbers.  A text column is a good choice if you want to store data like names, addresses, or simple custom data.

### **Number**

The number data type stores numbers.  A number column is a good choice if you want to store data like age, phone numbers, values. It's important to note, the number column type is important when you need to do calculations within your data. Within the Number data type, you can provide min and max values. This allows you to add additional validation to your data type. 

{% hint style="info" %}
Example: You might have a scoring system in place. The scoring system is from 0 \(min\) to 10 \(max\). This stipulates only numbers between 0 and 10 can be added to that column.
{% endhint %}

### **Yes/No** 

The Yes/No is a data type that has one of two possible values \(usually denoted as true/false, yes/no, Boolean\). Within your UI, this is usually displayed in the form of a checkbox.

{% hint style="info" %}
Example: You have a to-do list, and you want to label your tasks as 'Completed' or 'Not Completed'.  You would create the column, name it 'Completed?', and select the yes/no field type. 
{% endhint %}

### **Attachment**

Within your Budibase table, you can store images and documents using the attachment data type. Budibase supports all file formats and has an upload limit of 20MB.

### **Date**

The date data type stores dates. This is important when using components, or displaying information which relies on time/dates. A calendar component, for example, will utilise the date field. With Budibase, you can also provide a start date and end data, within your date data type. This allows you to additional validation to the date column. The date's within Budibase comply to ISO8601 formating - `2020-09-24T13:12:04.622Z`. Thankfully, we have date picker which removes the need to enter this form of date and makes life easier.

{% hint style="info" %}
Example: You might have a holiday home which you only want to let out between 4th May and 20th August. You would add the 4th May as your start date, and the 20th August as your end date. This stipulates only dates between the 4th May and 20th August can be added to that column. 
{% endhint %}

### Options

The options data type stores options. When adding options, you must take a new line for each option. 

{% hint style="info" %}
Example: You might a table called Accounts and you want to know to assign a sales person to each new account. To do this, you would add a sales person column, and select the options data type. Once you have selected the options data type, you would then add the members of your sales team.
{% endhint %}

