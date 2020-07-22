# Component API

All Budibase components are passed a prop, by the name of `_bb`. Below is a description of all members of `_bb`:

### attachChildren - function

If a component accepts children via the `_children` property, `attachChildren` should be used by your component to place the children inside a given element.

##### Arguments

`htmlElement`: The parent element, where the children should be rendered.

`options` (optional): An object giving options for rendering the children.

- `hydrate`: When true, will replace any existing children of the parent. Default true
- `force`: Force an immediate re-render of the children. Default false 
- `anchor`: An existing child element. When hydrate = true, children will be appended after this item. If no anchor is supplied, child elements will be appended after the last child of the parent

### context - object

Context data passed in from the component's "code" block (or one of its ancestors). The component's parent context may be accessed via `context.$parent`.

### props - object

Original props as defined by the builder. If this includes binding expressions, then this will include those expressions, and not the bound values.

### call - function

Used to call an event on the component, for example:

```javascript
_bb.call(onClick, { message: "hello!" })
```

##### Arguments

`eventName`: The name of an event defined by the component. This must be an event that has been defined in the `component.json`.

`data` (optional): Custom data to be passed to the event handler.

### setStateFromBinding - function

Used to set a property in the app state, based on a prop binding, for example:

```javascript
// the onChange handler of an input - sets state, based on the "text" prop
function onChange(e) {
	_bb.setStateFromBinding( _bb.props.text, e.target.value )
}
```

##### Arguments

`binding`: A binding expression. Determines what is being set within the app state.

`value`: Value to set in state.

### setState - function

Used to set a property in the app state:

```javascript
_bb.setState( "NavComponentData.selectedItem", "Customers" )
```

##### Arguments

`path`: A path in the app state. This can be a multi-part identifier. The above example will result in the following being created or updated in state:

```
{
  NavComponentData: {
    selectedItem: "Customers"
  }
}
```

`value`: Value to set in state

### getStateOrValue - function

Used to fetch the value of a prop. If the prop is a binding expression, it will retrieve the value from state. Otherwise, the prop's value will be used:

```javascript
/*
props: {
  title: "state.customer.fullname"
}
state: {
  customer: {
    fullname: "steve jobs"
  }
}
*/
_bb.getStateOrValue( _bb.props.title )
// returns "steve jobs"
```

##### Arguments

`propValue`: A static value or binding expression.

### isBound - function

Checks whether the prop is a binding expression. If the value of the prop is bound to a state object property, `isBound` will return true. 

`isBound(property)` is often used in conjunction with `setStateFromBinding(stateProperty, value)`:

```javascript
if (_bb.isBound(_bb.props.checked)) {
  _bb.setStateFromBinding(_bb.props.checked, value)
}
```

#### Arguments

`property`: Property on `_bb.props` to check for a binding expression. 
