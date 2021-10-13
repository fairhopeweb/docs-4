# Using relationships between SQL tables

Budibase allows you to declare relationships between your table. We are going to set up our one-to-many relationship between Vehicles and Deals.  


Note that Budibase does not modify your tables. We are simply telling Budibase about your existing database structure.  


To create a relationship:

1. Select your SQL datasource
2. Click on “Create Relationship”
3. Set relationship type to “One”
4. The from \(“One”\) table is “Vehicles”
5. The to \(“Many”\) table is “Service Logs”
6. The “From Table Column” is how your relationship will be named in your Vehicles table. We will call this “Service Logs”.
7. The “To Table Column” is how your relationship will be name in your Service logs table. We will call this “Vehicle”

The relationship is now created, however, we need to tell Budibase how to describe the Vehicle from the Service Log table, and vice versa. To do this, we need to set the “Display Column”. This is equivalent to a column alias:

`SELECT ServiceLogs.*,  Registration as Vehicle` 

`FROM ServiceLogs` 

`INNER JOIN Vehicle on ServiceLog.VehicleId = Vehicle.id`  


I.e. use the Vehicle “Registration” column when displaying it in the Service Table.  


So, we will set up our display columns

1. Click “Update Display Columns”
2. For “Vehicles”, choose “Registration”
3. For “Service Log”, choose “Description”

{% embed url="https://youtu.be/dcOg43XT\_fE" %}



  


