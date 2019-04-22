# Budibase Core

Budibase core is a library used by Budibase Apps, Budibase Server and Budibase Builder. It defines and implements all core APIs used in Budibase. It's main purpose is to construct and to understand the "Budibase App Definition".

Here is a quick overview of the usage of Budibase Core.

1. Budibase Builder is used to create an "App Definition" - a set of JSON files that defines everything about an app built with Budibase. The builder is really just a User Interface that wraps Budibase Core. Budibase core defines the APIs used to construct an App Definition.
2. Budibase Web provides and HTTP API for your web app to use. All HTTP Endpoints and behaviors are defined by the App Definition file. Budibase core implements the behaviour of these endpoints (except for any custom endpoints). Budibase web is really just an HTTP wrapper around Budibase core.
3. Your Budibase App's front end presents your app's data, and makes HTTP requests to Budibase Web. Budibase Core is used in your app to understand the App Definition. It allows record/field binding, running validation rules, knowledge of security levels.

![overview](./assets/budibase-core/overview.png)



## Concepts

### Records

A record is the fundamental unit of data in Budibase. Records are stored as JSON. A record has a schema, that is defined in the app definition. The record's schema will define

1. Fields. Every field must be declared, and will consist of
   - Name. e.g. "last_name". This is the name of the member, as store in JSON
   - Label. e.g. "Last Name". What the field will be labelled in the user interface
   - Type. e.g. "string". Types are listed below
   - TypeOptions. See types below
   - InitialValue. e.g. "(unknown)". The initial value on a new record 
   - DefaultValue. e.g. "(not set)". The value taken if the the loaded JSON object is missing this field.
2. Validation Rules. A set of rules, written in javascript, which are run when a record is created or updated.
3. Collection Name. This defines the "key" (and therefore URL) of the record. e.g. "customers", may cause a record to have a key of "/**customers**/0-6shd8uu""
4. Record Node Id. Each record type will have its own unique integer. this is used to for the record's key. e.g. "/customer/**0**-6shd8uu".
5. Collection Sharding. This defines how a collection of records of this type are stored. At the storage level, all records belong to a "folder". Sharding enables records to be stored across multiple folders, to aid scalability
6. Children. A record may have child records. E.g. "Invoice" may belong to "Customer". See "Heirarchy" below.
7. Indexes. Used to keep a retrievable list of the record's decendants (children, grandchildren etc...). See "Indexes" below.

A Budibase record will always have a "key" member. The key is used to determine the record's type, and thus its schema.

**Hierarchy**

Your database schema are organised in a tree structure. Each node, except for the root, is a record node. 

Below shows an example heirarchy:

![Example Heirarchy](./assets/budibase-core/example-heirarchy.png)

In this example, the "customer invoice" node is a child of "customer". Thus, records of this type will always have a key in the format:

`/customers/{parent customer id}/invoices/{invoice id}` 

### Indexes

An index is the only way to retrieve collections of records, i.e. a json array of records. When a record is created, updated or deleted, an index is updated.

Indexes may belong to the root node, or to any record node.

An index is defined with the following properties:

- `name`. This will define the key of the index, i.e. the path used to access it. e.g. "all_invoices" index on the customer node will have a key in the format "/customers/{customer-id}/all_invoices". Required.
- `map`.  As in "map-reduce". Javascript code, used to determine which fields are selected from the record, into the index. Not required - defaults to all fields.
- `filter`. a Javascript function, which should return a bool. Determines whether a record should b included in the index. Not required.
- `allowedRecordNodeIds`. An array of record node Ids to include in the index. Required.

An index may be either be of type "hierarchal" or "reference".

##### Hierarchal Index. 

When a record is changed, Budibase core will search for all hierarchal indexes (type='hierarchy') that belong to an ancestor of the record. For each found It then apply the following rules

1. Check if record's node Id is included in the index's allowedRecordNodeIds
2. Run the filter method
3. Determine if index should be updated:
   - If creating and filter returns true: add to index
   - if deleting and filter returns true: remove from index
   - if updating, filter returns true, filter preivously returned true & mapped record has changed: update in index
   - if updating, filter returns false & filter previously returned true: remove from index
   - if updating, filter returns true & filter previously returned false: add to index

##### Reference Index

A reference index is used when a record has a field of type reference. I.e. when one record references another record. 

If record A references record B, then record B will hold an index, which includes record A, and any other records that are referencing it.

#### Field Types

| Type          | Description                                                |
| ------------- | ---------------------------------------------------------- |
| string        |                                                            |
| bool          |                                                            |
| datetime      |                                                            |
| number        |                                                            |
| reference     | reference to another record                                |
| array (typed) | an array, containing only values of one of the above types |
|               |                                                            |

####  Datastore

The datastore is a Budibase abstraction, describing a set of methods used to read and write data to the end storage mechanism.

The actual implementation of the datastore is passed to the Budibase Core, from whatever is using the library. In general, the budibase datastore is a key-value store. Any store of data that allows for a "key" (id) and a "value" (json data) can have a budibase datastore written. In Budibase Core the "key" is referred to as "key", and the "value" is referred to as either:

- "File": When data (e.g. a record or index) is being stored
- "Folder": Used to keep a list of files in this namespace (i.e. just like a folder or directory in a file system).

Some examples of potential datastore implementations:

- In Memory. The Budibase Core test suite uses a a JSON object as it's datastore. Each member of the JSON object represents the key and value.
- File system. File/Folder path = key, File/Folder contents  = value
- Redis. Is a key value store
- MongoDb. Keys and Documents
- Dropbox. Same as filesystem

## Runtime Responsibilities

On the web server:

- Validates incoming web requests, using schema and rules defined in the application definition
- Authenticates and authorizes incoming requests, using access levels defined in the app definition
- Stores records
- Handles record retrieval from storage
- Manages indexing of records, on create, update and delete. Indexes are defined in the app definition
- Manages users and their levels of access. Users are stored in storage, allowed access levels are defined in the app definition.

In the application front end (browser):

- Automatically binds UI controls to records, using schema defined in the app definition
- Disables/Enables features and actions in the UI, based on a user's access levels
- Knows which fields are available on indexes, for searching and displaying of collections of data records
- When a record is created/updated/deleted, knows which indexes should change, and can update views accordingly, without having to refetch an index.

