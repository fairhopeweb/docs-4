# Create a new todo Item, inline

Now, we want the ability to create a new todo item, directly from the todo list. To achieve this, we will:

1. Create a new form, inside your data provider
2. Add a text input to the form. 
3. Set the input’s “Field” property to Title. We will use this to create a new item.
4. Add a button to the form. 
5. Click on “Define Actions”, to set the button actions.
6. Add an “Execute Query” action, and choose your “Create new item” request.
7. Assign the `item_title` parameter to your text input value.
8. Add a “Clear Form” action. This will clear the input, after the request has been executed.
9. Add a “Refresh Data Provider” action, and choose your data provider. This will reload the list, to display your new item.

{% embed url="https://youtu.be/pzjdgS75gV0" %}

\
