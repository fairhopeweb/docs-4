# View

An view is the only way to retrieve collections of records, i.e. a json array of records. When a record is created, updated or deleted, an view is updated.

View may belong to the root node, or to any record node.

An view is defined with the following properties:

* `name`. This will define the key of the view, i.e. the path used to access it. e.g. "all\_invoices" view on the customer node will have a key in the format "/customers/{customer-id}/all\_invoices". Required.
* `map`.  As in "map-reduce". Javascript code, used to determine which fields are selected from the record, into the view. Not required - defaults to all fields.
* `filter`. a Javascript function, which should return a bool. Determines whether a record should b included in the view. Not required.
* `allowedRecordNodeIds`. An array of record node Ids to include in the view. Required.

An view may be either be of type "hierarchal" or "reference".

## Hierarchal View

When a record is changed, Budibase core will search for all hierarchal views \(type='hierarchy'\) that belong to an ancestor of the record. For each found It then apply the following rules

1. Check if record's node Id is included in the view's allowedRecordNodeIds
2. Run the filter method
3. Determine if view should be updated:
   * If creating and filter returns true: add to view
   * if deleting and filter returns true: remove from view
   * if updating, filter returns true, filter preivously returned true & mapped record has changed: update in view
   * if updating, filter returns false & filter previously returned true: remove from view
   * if updating, filter returns true & filter previously returned false: add to view

## Reference View

A reference view is used when a record has a field of type reference. I.e. when one record references another record.

If record A references record B, then record B will hold an view, which includes record A, and any other records that are referencing it.

