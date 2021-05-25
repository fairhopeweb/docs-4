---
description: >-
  Learn about fetching data from your tables, views and external data sources,
  and how to use that data in your components.
---

# Fetching Data

Pulling data from your tables and displaying it is a critical part of any data-driven application. We've made this as simple as possible, by using a single component to control fetching, filtering and sorting your data. This component is the data provider component.

![An example dashboard](../.gitbook/assets/image%20%2813%29.png)

### Overview

A data provider component fetches data and provides it to all child components. Any child components which take in data to display have a simple setting for which data provider is providing their data. You can hook up as many components as you like to the same data provider, and they'll all be in sync with each other.

Data providers have settings to control filtering, sorting and pagination. Because all of these data settings are handled by the data provider, it keeps all components as purely presentational. You can update the source of your data provider and your whole dashboard will instantly reflect an entirely different table!

### Fetching Data

To start off, add a data provider component to your app. It usually makes sense to have this quite high in your component tree, as anything that needs the data it will provide needs to be nested inside it. In the settings panel, choose the source of your data. This can be an internal table, a view, a relationship or an external data source query.

![Choosing the data source of a data provider component](../.gitbook/assets/image%20%2816%29.png)

### Displaying Data

Lets say we'd like to display all our sales records in a table, and also in a chart. All we need to do is add both components, and configure the data provider settings. For the chart we'll also need to configure some other chart-specific settings, but the table will show all our records instantly.

![Choosing the data provider setting](../.gitbook/assets/image%20%2815%29.png)

Our component tree should look something like the following.

![Simple component tree to display data](../.gitbook/assets/image%20%2812%29.png)

Our application should now be displaying our data in both components!

![Simple app displaying sales records](../.gitbook/assets/image%20%2814%29.png)

