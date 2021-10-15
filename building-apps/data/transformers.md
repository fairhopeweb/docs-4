---
description: Using Budibase query transformers
---

# Transformers

In this section we will cover how to use Budibase data transformers, which can be used as part of data source queries. It is often a requirement when retrieving data from various sources to transform to fit your apps use case - from simply extracting properties from deeper JSON objects to enriching your data with more information transformers can be used for a wide variety of applications.

{% hint style="info" %}
This section makes use of JavaScript, a programming language which allows implementing very complex logic into your Budibase applications. We recommend the [Modern JavaScript Tutorial](https://javascript.info) to pick up the basics, for transformers you will specifically benefit from knowledge around data types, such as [Arrays](https://javascript.info/array), [Array Methods](https://javascript.info/array-methods) and [Objects](https://javascript.info/keys-values-entries).
{% endhint %}

To create a transformer first you need to create an external data source and a query, steps for this can be found in the [data sources section](tables/). In the example below we will be transforming some data from the [Open Brewery Database](https://api.openbrewerydb.org) - we will be creating an app which has tallies of the number of breweries by US state.

When you first create a query you'll see the transformer code editor in its own section, as seen below.

![initial transformer state](<../../.gitbook/assets/image (20).png>)

This in its basic form will return the data exactly the way it is retrieved from the data source, it is recommended to get your query up and running correctly first before altering your transformer, this will allow you to look at the initial schema of the data returned. In our example so far we have:

1. Setup a REST data source, with our URL set to [https://api.openbrewerydb.org](https://api.openbrewerydb.org)
2. Created a query and set the path to "breweries"
3. Ran the query to see the schema

The schema for this query appears as below:

![basic query schema](<../../.gitbook/assets/image (21).png>)

Using this information we can now write the transformer function that will be used. Initially we just want to write a function which will:

1. Work through the array of breweries that is returned by the API, in the format shown above
2. Extract the state and add it to a total count of states that have been seen
3. Return a new structure which contains only the state name and the count of breweries within

You can see the basic transformer we have written to do this below.

![basic transformer function](<../../.gitbook/assets/image (1).png>)

Here we have taken the data, written a for loop that iterates through a fills up an object with counts for each state (using the state's name as the key into the object) and finally we've mapped these totals to our output structure, an object with a state and count property. You can see from this that we can drastically change the format of the data; using JavaScript you can change the data in a multitude of ways.

For the last part we want to add data that simply isn't a part of the query, enriching application logic that we've provided as part of the transformer. We are going to add a URL which points to an image of the states flag for each of the state entries, to do this we will create a URL dynamically to [http://flags.ox3.in/](http://flags.ox3.in) - a repository of SVG flags. You can see the final function which does this below.

![final transformer function](<../../.gitbook/assets/image (22).png>)

This may look a little complicated, but all we have done is added a map of the state names to state codes, then at the end when we produce the final data we lookup the state name in the map and build a URL which has the code in it. You can see in our results section we now have a "flag" property, which can be used in the design section with something like an image or card component. We've thrown together a quick example of how this can all come together in your design, using only a data provider, repeater and card component bound to the "state", "count" and "flag" properties our transformer produced.

![final Budibase app!](<../../.gitbook/assets/image (7).png>)

Hopefully this has helped to demonstrate how transformers can be used to get the data you need for your application, happy coding!
