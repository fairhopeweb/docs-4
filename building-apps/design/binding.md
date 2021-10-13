---
description: Data bindings with Handlebars
---

# Bindings

Budibase is focused on building data-centric web apps and tools - to be able to do this you need a way to manipulate data. To do this Budibase has the ability to bind data into any design or automation element through the use of [Handlebars syntax](https://handlebarsjs.com).

For much more detailed documentation on all the handlebars helpers budibase provides, you can find the entire suite of budibase handlebars helpers here in the README of this repository:

[https://github.com/Budibase/handlebars-helpers](https://github.com/Budibase/handlebars-helpers)

{% hint style="info" %}
Budibase bindings utilise Handlebars heavily, therefore it is useful to have an understanding of the syntax. Things such as how Handlebars can handle conditionals and the use of helper functions can be found in the Handlebars documentation [here](https://handlebarsjs.com/guide/).
{% endhint %}

There are a number of places that bindings can be utilised throughout the Budibase Builder such as:

1. External data source queries - when building a query it is possible to utilise Handlebars syntax to specify where parameters should be inserted, e.g.` SELECT * FROM users WHERE username = {{ value }}`
2. The value of components in design - the values of most components in the design can be populated with bindings; anywhere that a value in the components setting has a lightning bolt next to it a binding can be inserted. Clicking the binding button (the bolt) will open the binding drawer.
3. Automation steps - automations have the ability to make use of data from previous steps, this can be found in the binding panel; opened in the same manner as with the design bindings.

When making use of bindings it is possible to manipulate the data using the Budibase Handlebars helpers, these allow performing calculations, carrying out some basic logical comparisons and some array/string functions. The full list of options available is as follows:

1. [Arrays](https://github.com/Budibase/handlebars-helpers#array) - the ability to sort, slice, get an item at a specific index, etc.
2. [Comparison](https://github.com/Budibase/handlebars-helpers#comparison) - simple logic such a greater than, equal to, less than, contains, etc.
3. [Dates](https://github.com/Budibase/handlebars-helpers#date) - the ability to format dates as you desire, using syntax like "DD-MM-YYYY" - there is only one helper for this and it can be used as such: `{{ date tableName.dateProperty "DD-MM-YYYY" }}` you can also use `now` instead of a table/data source data property if desired.
4. [Math](https://github.com/Budibase/handlebars-helpers#math) - math functions like adding, subtracting, averaging, etc.
5. [Number](https://github.com/Budibase/handlebars-helpers#number) - these helpers allow formatting numbers, for example setting precision, setting to an exponential, adding commas, etc.
6. [String](https://github.com/Budibase/handlebars-helpers#string) - the ability to manipulate strings, such as splitting them (useful with the array helpers), appending, capitalisation, etc.
7. [URL](https://github.com/Budibase/handlebars-helpers#url) - the ability to encode/decode URI and escape URLs.

Below is a video showing some of the capabilities of Budibase bindings in the design panel - showing how to add a repeater to make use of table data and then displaying some date values as well as carrying out some complex string manipulation.

### Tips and tricks

It is important to remember than Handlebars does allow quite complex statements, which can make use of comparative logic (especially with our comparison helpers). Below we've detailed a few tips which should help you get started with bindings and Handlebars syntax.

#### Chaining helpers

Handlebars allows chaining helpers together to create quite complex statements - for example if I had the string "Username: Michael" and I wanted to just get the name I could do the following:

```
{{ last ( split "Username: Joe" ": " ) }}
```

In the example we split the string by the colon and space in the middle, then get the last element of the array produced by the split helper. Chaining helpers simply requires wrapping each layer of helpers with parentheses, although it is important to remember parameter order, for example if we had the string "My name is Joe Bloggs" and we wanted to get the string "Joe Bloggs" we would do the following: 

```
{{ join ( after ( split "My name is Joe Bloggs" " " ) 3 ) " " }}
```

Take note with this statement of where the "join" and "after" last parameters are positioned, here we are splitting the string into an array by the spaces, then selecting the elements in the array after index 3, then finally re-joining the string with a space again.

#### Iteration

A powerful feature which can be utilised with Handlebars is the ability to iterate over an object or array. This can be extremely useful when paired up with data sources, for example if you had a DynamoDB table which contains JSON you might want to do the following:

```
{{#forIn Query 1.object.json}}
  property: {{@key}} - value: {{.}}
{{/forIn}}
```

This would print out the key and value of each property in the JSON object retrieved from the query - notice the use of the `{{ @key }}` and `{{ . }}` these are specific to the forIn helper. It is important to note that the iteration functions do require the input to be of the correct type, forIn requires an Object and forEach requires an array - the forEach helper also requires that each element of the array contains an object so that the properties of the object can be referenced, for example:

```
{{#forEach Query 1.array}}
  username: {{ username }}
{{forEach}}
```

In the example above it is assumed that the `Query 1.array` property is an array consisting of objects that contain `username` property.

#### Conditionals and comparisons

Handlebars is capable of carrying out logic when running a block, this is a core component that can be used to produce more conditional outputs. An example of this might be pulling information from an external data source, which has information about a customers total spending, we might do something like:

```
{{#if ( gte Query 1.Customer.spending 1000 )}}
  Thanks {{Query 1.Customer.name}}! We value your patronage.
{{else}}
  Hi {{Query 1.Customer.name}}!
{{/if}}
```

As you can see from this example we can wrap an statement in an `#if` block which allows us to produce a specific output when  a condition is met. We have also made use of the `gte` helper which checks if the first property is greater than or equal to the second property. Chaining together a few different helpers and then finishing with a comparison can allow us to perform some very specific logic. We can also make use of regex to perform conditional logic, as such:

```
{{#if ( test "hello there" (toRegex "there"))}}
  Over there!
{{/if}}
```

We can use the `test` helper to run a regex expression against a string, this regex can come from the `toRegex` helper or it can be directly input as a string; or even a property of a table, query or automation step!
