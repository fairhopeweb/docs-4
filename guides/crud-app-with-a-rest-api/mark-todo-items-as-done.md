# Mark todo items as “Done”

For every item in our list, we want to display a “Done” button. When clicking on the button, the GitHub issue should be closed and our item should disappear from the list.

1. Create a new query on your GitHub datasource
2. Name your query “Mark as Done”
3. Select the PATCH function
4. Add a new parameter called “item_number”
5. Set the path to `/repos/<github-username>/<github-repo>/issues/{{ item_number }}`
6. Set the body to `{ “state”: “closed” }`
7. Save your query

{% embed url="https://youtu.be/of4qZC3ODR0" %}

Now, we can use this query in our user interface.

1. First, we will add a new container inside our repeater. We want to display the button and title alongside each other, so must use a container to achieve this layout.
2. Drag your title “Paragraph” component inside the container.
3. Add a button to the container and set the text to “Done”
4. Now, click on “Define Actions” for the button
5. Add an “Execute Query” action, choose the “Mark as done” query, and pass in the GitHub issue number as a parameter.
6. Add a “Refresh Data Provider” action.

{% embed url="https://youtu.be/mNyAW4e3mKk" %}

