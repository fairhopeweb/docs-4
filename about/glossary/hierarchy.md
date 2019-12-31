# Hierarchy

Your database schema are organised in a tree structure. Each node, except for the root, is a record node.

Below shows an example heirarchy:

![Example Heirarchy](../../.gitbook/assets/example-heirarchy%20%281%29.png)

In this example, the "customer invoice" node is a child of "customer". Thus, records of this type will always have a key in the format:

`/customers/{parent customer id}/invoices/{invoice id}`

