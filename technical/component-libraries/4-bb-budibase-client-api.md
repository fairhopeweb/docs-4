# Component API

All budibase components are passed a prop, by the name of `_bb`. Below is a description of all all members of `_bb`.

### attachChildren - function

If a component accepts, children, via the `_children` property, `attachChildren` should be used by your component used to place the children inside a given element.

##### Arguments

`htmlElement`: the parent element, where the children should be rendered.

`options`: (optional). an object, giving options for rendering the children

- `hydrate`: when true, will replace any existing children of the parent. default true
- `force`: force an immediate re-render of the children - default false 
- `anchor`: an existing child element. when hydrate = true, children will be appended after this item. if no anchor is supplied, child elements will be appended after the last child of the parent

### context - object

context data passed in from the componet's "code" block (or one of its ancestors). The component's parent context may be accessed via `context.$parent`

### props - object

original props as defined by the builder. if this includes binding expressions, then this will include those expressions, and not the bound values

### call - function

 used to call an event on the component... e.g. 

```javascript
_bb.call(onClick, { message: "hello!" })
```

##### Arguments

`eventName`: the name of an event defined by the component. This must be an event that has been defined in the `component.json`

`data`: (optional). custom data to be passed to the event handler

### setStateFromBinding - function

Used to set a property in the app state, based on a prop binding. e.g.

```javascript
// the onChange handler of an input - sets state, based on the "text" prop
function onChange(e) {
	_bb.setStateFromBinding( _bb.props.text, e.target.value )
}
```

##### Arguments

`binding`: a binding expression. Determines what is being set, within the app state

`value`: value to set in state

### setState - function

Used to set a property in the app state

```javascript
_bb.setState( "NavComponentData.selectedItem", "Customers" )
```

##### Arguments

`path`: a path in the app state. This can be a multi-part identifier. E.g. the above example will result in the following being created or updated in state

```
{
  NavComponentData: {
    selectedItem: "Customers"
  }
}
```

`value`: value to set in state

### getStateOrValue - function

Used to fetch the value of a prop. If the prop is a binding expression, it will retrieve the value from state, otherwise, the prop's value will be used

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

`propValue`: a static value, or binding expression