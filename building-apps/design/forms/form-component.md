---
description: Learn how to use the Budibase form component.
---

# Form Component

The `Form` component is the top level component of forms. All field groups and fields must be placed inside a form, and they won't work outside it.

![A typical Budibase form](../../../.gitbook/assets/image%20%289%29.png)

### Form Settings

Forms only have a few simple settings. 

| Setting | Required | Description |
| :--- | :--- | :--- |
| Name | Yes | The name of the form component |
| Schema | No | The schema for the form |
| Theme | No | The theme for the form |
| Size | No | The size theme for the form |
| Disabled | No | Whether the form is disabled \(noneditable\) or not |

#### Form Schemas

Forms have a `Schema` setting which is optional. The schema for a form can be a table, view, relationship, query or "custom". A custom schema means that there is no backing data source schema.

Choosing a form schema has the following advantages:

* When adding fields, field names can be chosen from a dropdown rather than being typed
* Field validation is automatically added to match the schema
* If you want to create rows in a table using your form data, you'll need to choose the correct schema for the table you'll be saving your data to
* Fields will be able to automatically prevent you entering an illegal field name for a certain data type
* Form components can be automatically generated to match the schema

