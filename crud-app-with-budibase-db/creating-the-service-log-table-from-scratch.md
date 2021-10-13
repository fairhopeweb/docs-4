# Creating the Service log table from scratch

If you do not have CSV data to import, you can build the table yourself.\


To create our “Service Log” table:

1. Click on “Budibase DB”.
2. Click “Create new table”.
3. Call your table “Service Log”, and Uncheck “Generate screens in design section” - we will add these manually.
4. Create the following columns
   1. Description - Text.
   2. Vehicle. A relationship to the Vehicles table (one Vehicle has Many Service Logs)
   3. Service Date - Datetime.
   4. Category - Options. Our options will be Brakes, Tyres, Engine and Transmission, each separated by a new line.
   5. Mileage - a number.
5. Finally, create some rows in the Service Log table, so that we have data to test with.

{% embed url="https://youtu.be/aRXbLqQYtkA" %}



\
