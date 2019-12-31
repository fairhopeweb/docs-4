# Component JSON API

The JSON of a single component \(within `components.json`\) should take the following structure

```javascript
{
  // key should refer to a component, exported from your javascript package 
  "button" : {

    // The name of the component, as displayed in Budibase builder 
    "name": "Button", 

    // A longer description of the component 
    "description": "an html <button /> tag",

    // a collection of properties that can be set from the builder 
    "props": {

      // some example properties - see below for property definitions 
      // these keys should correspond to writeable properties, exposed by
      // your component 
      "contentText": "string",
      "contentComponent": "component",
      "className": {"type": "string", "default": "default"},
      "disabled": "bool",
      "onClick": "event"
    }
  }
}
```

## Component Props

Component properties take the form

```javascript
"propertyName" : { 

  // the type of the property. This determines which control will be used 
  // to set the property, inside the builder. All types are listed below 
  "type" : "string", 

  // the initial value set, and a new component is created in the builder 
  "default": "some value ",

  // This only applies to when type="options". A collection of allowed values.
  // The user will use a dropdown to select one of these, from the builder
  "options": ["red", "blue", "yellow"],

  // Applies when type="array". A JSON object defining properties of 
  // each element in an array
  "elementDefinition": { /* keyed prop definitions*/ }

}
```

or the shorthand version:

* `"propertyName" : "type name"` 

Property types:

| Type Name | Control in builder |
| :--- | :--- |
| string | text input - free type |
| bool | checkbox |
| options | dropdown / select |
| event | Event Selector. Choose from a list of predefined budibase event handlers. e.g. "Save Record", "Execute Action", "" |
| component | Child Component selector. choose from a list of existing budibase components |
| array | Array selector. Add multiple sets of properties. A set is defined by `elementDefinition` |

