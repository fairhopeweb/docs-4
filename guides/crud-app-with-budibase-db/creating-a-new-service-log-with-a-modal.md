# Creating a new Service Log with a modal

Next, we are going to add a “Create new” button to our Service Log. We want to enter the new details into a form - inside a modal.  


First, we will create and configure a button.

1. Create the button, and position it on the screen using a container. We place the container above our Service Log table, place the button inside, and right-align it.
2. Click on your button, and choose “Define Actions”. 
3. Add a “Navigate To” action, with the URL “/service-log/new/row”, and tick the box to “Open screen in modal”.

{% embed url="https://youtu.be/rjMlZFEONMQ" %}

Next, we will create a new screen that allows us to create new “Service Log” rows.

1. Click the “+” button to create a new screen.
2. Select the template “Service Log - new”.
3. Set the URL to  “/service-log/new/row”. 
4. Click “Create”. This will bring you to your new screen.
5. Click on the “Save” button on your new screen, then “Define Actions”.
6. Remove the “Navigate to” action.
7. Add a new action for “Close Modal”.

{% embed url="https://youtu.be/cQygJ-rQ26I" %}



  


