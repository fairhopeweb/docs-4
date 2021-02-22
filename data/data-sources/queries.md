---
description: Learn more about Queries in Budibase.
---

# Queries

Once you have setup your external data source, you can use a query to describe how to read and write data.

In the examble below, I run a `select`, against a Postgres database.

{% embed url="https://youtu.be/NIvMwc78DYc" %}

## Function

You must choose a function when creating a query. The options are

- *Read* - Budibase will fetch a list of records from your data source.
- *Create* - A new record is created in your data source
- *Update* -An existing record is updated in your data source
- *Delete* - An existing record is deleted from your datasource

## Fields

This section defines the information that you must input to setup your query.

This information differs, depending on which data connector you have decided to use (e.g. Postgres, MongoDb, Airtable etc).

For example, if you are using a SQL connector, this is where you will input your SQL statement.

## Parameters

Parameters are used to supply data into a query. This allows you to create a dynamic query.

Below is an example using a SQL query:

Parameter: `emailAddress`

Query: `SELECT id, name, telephone FROM customers WHERE email = '{{ emailAddress }}'`

Here, we use the `emailAddress` parameter to filter the SQL statement.

When we use a query in the Budibase design section, we have the option to supply this parameter to the query - e.g. via an `<input>`.

### Parameter default value

When you create a parameter, we have then option of setting a "Default Value". The query will use this value when the parameter is not supplied.

## Schema

The schema defines a list of fields that describe the output from your query. All queries must define a schema.

Once you have set up your query, click "Run Query" to automatically create your schema. You may then manually add and remove fields from your schema.
