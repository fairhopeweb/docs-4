# Hierarchy

Your database schema are organised in a tree structure. Each node, except for the root, is a record node. 

Below shows an example heirarchy:

![Example Heirarchy](./example-heirarchy.png)

In this example, the "customer invoice" node is a child of "customer". Thus, records of this type will always have a key in the format:

`/customers/{parent customer id}/invoices/{invoice id}` 