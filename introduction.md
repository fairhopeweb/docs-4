# Introduction to Budibase

Budibase is an [open source](https://github.com/Budibase/budibase), low-code platform, for creating full stack web applications.

## Why?

Developing applications takes time. Time is our most valuable asset. 

A large percentage of effort that goes into creating any web application today is spent on tasks that are shared between all other applications that you have ever made.

For example..

- Creating your data model
- Making HTTP endpoints to read and write these datamodels
- Writing validation rules, for your data and duplicating them on the front and backend.
- Creating and hooking up a "nav"
- Laying out forms, and hooking up button clicks to POST endpoints.
- Creating access levels, and applying them to the front and backend
- Managing your application's instances (customers), and their users, in production.

The list goes on.

We want to get you past these common features within hours. Then, (if you need to) you should be able to write code (front and backend), to develop the parts of your application that make your application unique - the exciting parts of development.

With the Budibase builder, you can use a GUI (the "Budibase Builder") to build out the basics of your backend. Then, using a combination of the builder and component libraries, application themes and templates, you build out your frontend. 

You may then customise your backend using Nodejs, and your frontend using your favourite JavaScript and CSS frameworks.

## Is Budibase for me ?

There are two questions that you should ask yourself before making an app with Budibase: 

1. How comfortable am I with writing code?
2. Is my application a good fit for Budibase

### How comfortable am I with writing code ?

We have been surveying our signups, asking the question:

> How comfortable are you with writing code ? **1**=Not Comfortable at all .... **5**=Very Comfortable

**Eventually**, we want Budibase to be able to serve people who answered 2,3,4 and 5. 

**We are starting** with the 4s and 5s.

How we would describe these levels

##### Levels 4 & 5 could be ...

Someone with real world software development experience

Someone who has completed a programming educational course. A degree, bootcamp, self taught course 

Someone who has contributed code to open source.

##### Levels 2 & 3 could be ...

A web designer, who knows their way around HTML and CSS, but is not too confident with JavaScript

A systems administrator, who sometimes has to understand/piece together a shell script

A business IT person who loves to hack away with spreadsheet formulas

Basically anyone who has a a little coding exposure, but is not afraid to learn 

### Is my application a good fit for Budibase?

The output of the Budibase builder is

- A single page web application (SPA). This can also be a Progessive Web Application (PWA), on the roadmap for the near future.
- An HTTP Rest API, used to save your data objects, and run your custom backend code.

On the backend, data is physically separated into "Instances". An "Instance" is an individual dataset. 

Each of your "Customers" would normally have one instance, holding their data - with one or more users created against that instance.

You could also use instances for your "Environments"... e.g a Dev, Test, Preprod instance.

If your application uses a "Shared database" model, it may be a less appropriate fit for Budibase. For example, a forum, or marketplace  - where all users are accessing the same dataset. Budibase can still integrate with shared databases however.

We will discuss this in more detail, in a later chapter.