# Add a “Create Item” request

Next, we want to add the ability to create a new item from our Budibase app. We want to be able to pass in the item title, to the create query. To do this, we’ll create a query with parameters:

1. Click on your GitHub datasource
2. Click “Add Query”
3. Enter the name “Create new item”
4. The function is “POST”
5. Add a parameter called “item\_title”
6. Set the “Path” to `/repos/<github_user>/<github-repo>/issues`
7. Set the Body to `{ “title” : “{{ item_title }}” }`. This will pass our `item_title` parameter into the “title” field, in the JSON body.
8. Test your query to make sure that an issue is created.

{% embed url="https://youtu.be/\_mj9nTr\_Xqk" %}

  


