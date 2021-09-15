---
description: Learn how to use Budibase field components.
---

# Fields

Each field component represents a single field in the form. There are different component for every data type - e.g. a text field, an options picker or a checkbox.

### Field Settings

All fields have a `field` and a `label` setting. The `field` is the name of the field, or property of the schema. This can be free typed or, if a schema exists on the form, selected from a list. There are unique components for every type of data, and if your form has a schema then you'll only be able to choose field names which fit the particular type of component that is selected. The `label` setting is the label that will be displayed beside or above your field. Most fields also have a `placeholder` setting to control the text displayed when the field is empty.

| Setting | Required | Description |
| :--- | :--- | :--- |
| Name | Yes | The name of the field component |
| Field | Yes | The name of the field in the schema |
| Label | No | The label displayed beside this field |
| Placeholder | No | The placeholder value to show if the field is empty |
| Disabled | No | Whether the field is disabled \(noneditable\) or not |

Some field components for certain data types may have other settings, but in most cases this table is an exhaustive list.

#### Custom Fields

Whether your form has a schema or not, you can always add custom fields that don't exist in the schema by free typing the name of the field. Data bindings will always reflect the names of all the fields in your form - so even if you don't have a schema on your form, you'll be able to bind to any of your fields.

