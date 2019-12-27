# Creating a Component Library

Currently, we only support Svelte (V3) as a framework for creating frontend components. In future, we will aim to support more frontend frameworks. Please [raise an issue](https://github.com/Budibase/budibase/issues) to request a compatible framework.

## Overview

![custom-components-overview](./assets/component-libraries/custom-components-overview.png)

Your component library will export

- A `components.json` file, describing all the libraries components
- A bundled javascript file, containing your components (`index.js` in the above example)

### Components JSON

All component libraries must contain a `components.json` file. The purpose of this file is to describe which components are available to the Budibase builder, and to describe their properties.

This file is not used at runtime, by your built app - it is only used to describe components to the builder.

The file will take the overall structure of

```javascript
{
  // path to your built javascript package 
  "_lib": "./dist/index.js", 
    
  // generators for the library 
  "_generators": {
    // keyed by generator name 
    "form": {
        // see later for generator json API 
     }
  },
    
  // Every other key refers to a component, exported by the file in '_lib'  
  "textInput" : {
      // see later for json API 
  },
    
  "datePicker" : {
        
  }
}
```

- `_lib` : the path to your packaged components file (javascript). This file must export all components  and generators declared in the components.json file.
- `_generators` a JSON object. Keys of this object must correspond to exports from your _lib file.
- All other root keys in components.json should correspond to exports from your _lib file. Root keys are assumed to be components.

##### Component JSON 

The JSON of a single component (within `components.json`) should take the following structure

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



###### Component Props

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

- `"propertyName" : "type name"` 



Property types:

| Type Name | Control in builder                                           |
| --------- | ------------------------------------------------------------ |
| string    | text input - free type                                       |
| bool      | checkbox                                                     |
| options   | dropdown / select                                            |
| event     | Event Selector. Choose from a list of predefined budibase event handlers. e.g. "Save Record", "Execute Action", "" |
| component | Child Component selector. choose from a list of existing budibase components |
| array     | Array selector. Add multiple sets of properties. A set is defined by `elementDefinition` |

##### Generator JSON

Below is an example generator definition:

```javascript
// name of exported generator, from _lib file 
"app": {

  // how the generator is named within the builder 
  "name": "Full Application",
    
  // longer description of the generator, displayed in the builder 
  "description": "Generate app based on your backend"
}
```

