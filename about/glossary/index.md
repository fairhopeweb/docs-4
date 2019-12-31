# Index

An index is the only way to retrieve collections of records, i.e. a json array of records. When a record is created, updated or deleted, an index is updated.

Indexes may belong to the root node, or to any record node.

An index is defined with the following properties:

* `name`. This will define the key of the index, i.e. the path used to access it. e.g. "all\_invoices" index on the customer node will have a key in the format "/customers/{customer-id}/all\_invoices". Required.
* `map`.  As in "map-reduce". Javascript code, used to determine which fields are selected from the record, into the index. Not required - defaults to all fields.
* `filter`. a Javascript function, which should return a bool. Determines whether a record should b included in the index. Not required.
* `allowedRecordNodeIds`. An array of record node Ids to include in the index. Required.

An index may be either be of type "hierarchal" or "reference".

## Hierarchal Index.

When a record is changed, Budibase core will search for all hierarchal indexes \(type='hierarchy'\) that belong to an ancestor of the record. For each found It then apply the following rules

1. Check if record's node Id is included in the index's allowedRecordNodeIds
2. Run the filter method
3. Determine if index should be updated:
   * If creating and filter returns true: add to index
   * if deleting and filter returns true: remove from index
   * if updating, filter returns true, filter preivously returned true & mapped record has changed: update in index
   * if updating, filter returns false & filter previously returned true: remove from index
   * if updating, filter returns true & filter previously returned false: add to index

## Reference Index

A reference index is used when a record has a field of type reference. I.e. when one record references another record.

If record A references record B, then record B will hold an index, which includes record A, and any other records that are referencing it.

