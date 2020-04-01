# Default View

Once you have created the clown model, two new items have been added to the "Schema". 

- `clown`. The model that you have just created
- `all_clowns`. This is a "view"

## Models vs Views vs Records

You will find these three terms defined in more detail in the "Glossary" section of this documentation. In Summary:

- A **Model** defines the fields for a particular piece of data. I.e. "Column Headers". For example, our "clown" model
- A **Record** is a single piece of data that gets saved by our app, and is always linked to a particular model. e.g. `name: "Ccrusty the Clown", status: "Graduated"`. I.e. it's like a "Row" in a table
- A **View** is used to retrieve a list of records. It's like retrieving "All Graduated Clowns".  You may add a view to a filter

By default, the `all_clowns` view will be used to list all clown records, in our databse

![](../../assets/user-guide/schema-after-model-create.PNG)



