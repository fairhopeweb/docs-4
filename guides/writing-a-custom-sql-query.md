---
description: >-
  How to create a custom SQL query that accepts parameters from your app’s front
  end.
---

# Writing a custom SQL query

This guide will show you how to create a custom SQL query that accepts parameters from your app’s front end.

First, we will setup our query, with parameters. You can see my query below

1\. Give your query a name, and ensure it’s a `Read` function. 

2\. I’m writing a query with a date range filter, so I need to add 2 parameters: `startDate` and `endDate` 

3\. Be sure to enter some default values for your parameters, so that you can test the query below. 4. Write your query. 

5\. Use your parameters inside your query. You will need to format your date, depending on how your SQL database expects it. I am using postgres, so need to format my date in the `year-month-day` format: `{{ date startDate “YYYY-MM-DD” }}`

![](<../.gitbook/assets/image (1).png>)

Now, we will set up our app to run this query. I first setup my screen with the necessary components: 

* A Form, containing everything. 
* A `From` date picker, with its “Field” property set to `startDate`. 
* A `To` date picker, with its “Field” property set to `endDate`. 
* A `Data Provider`, linked to my custom query. 
* A table, underneath the data provider.

![](https://lh4.googleusercontent.com/ji2C89NlH2mzIGasZeJT9R9enCmXBB_tXPrpEuM5U7HtPu5r0rVX4LYxymYP74EFSdrXDqooF-DAOb0T5leeWzu-Pb7\_KoCmEt536xuEf5L3xM60G0yTdTtgAC0jvc5qww8DtcKW=s0)

Now, we need to apply the values from our date pickers, to our Data Provider.

Click the settings button, beside the `Data` field:

![](https://lh3.googleusercontent.com/-nbrry5Y-YjoKvsEBc_KwXc5THM2\_UWYfVzAy1nRl-JWIvpapPpMEPSx5bLpHmVUsWwIlU-jht4vVc5kCugZkS17mXVqortWYkXxJmaUDnHAtUYoOu7jdjy1CMI6rdSjKKAYpLIZ=s0)

This will display a drawer, from which we can supply parameters to our query. Beside each parameter, click the ⚡ button to select your date pickers' values. They should look like `{{ Form.Fields.startDate }}`.

![](https://lh5.googleusercontent.com/2fEBEQAb9Pl7ytnVv8XsFCd_zgILc\_4GT-i3R4LLVFU5D9QyafIAc85J0FD4REIotMgcENxV0Pa4EqvFw8VHQPeFXhRZ0iPr9P0SFP3\_hO1QtiZxaeDZ7wVBeyqTX-4pjhVroV9B=s0)

Click save, and test your application!
