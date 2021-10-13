# Importing the Vehicles table from a CSV

If you have some existing data, the fastest way to get data into a Budibase table is to import it using a CSV.\


Budibase will assume that your file is comma-separated and that the first row is a header row - i.e. it contains your column names.\


To create a table with a CSV:

1. Click on “Budibase DB”
2. Click “Create new table”
3. Give your table a name
4. Click the “Upload” button, and choose your CSV file
5. Click “Create”

Budibase will read your file, and display the column names that will be created. By default, all columns will be of type “Text”. However, you may change the column type at this point. \


CSV import does not support relationships.\


Attached below is our “Vehicles.csv” file, if you’d like to use this to try out the import.

{% embed url="https://youtu.be/WPadw3_wYFE" %}



{% file src="../.gitbook/assets/vehicles.csv" %}
Vehicles CSV
{% endfile %}
