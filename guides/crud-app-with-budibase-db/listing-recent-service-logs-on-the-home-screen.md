# Listing recent Service Logs on the home screen

When users log into our app, we want to present them with a list of recent Service Logs - i.e. a list of Service Logs, in descending order of “Service Date”.\


To achieve this we:

1. Navigate to the home screen, under “Design”.
2. Remove any default component that are on the page.
3. Add a “Data Provider” component.
4. Give the data provider a name, so that we can easily identify it in our component tree (left panel).
5. Setup the data provider to connect to the “Service Log” table.
6. Set the “Sort Column” to “Service Date”
7. Add a table component, underneath the data provider

{% embed url="https://youtu.be/cqorhL1rYNA" %}



\
