---
description: Learn more about the Position design properties within Budibase
---

# Position

The **`position`** property sets how your component is positioned. The [`top`](https://developer.mozilla.org/en-US/docs/Web/CSS/top), [`right`](https://developer.mozilla.org/en-US/docs/Web/CSS/right), [`bottom`](https://developer.mozilla.org/en-US/docs/Web/CSS/bottom), and [`left`](https://developer.mozilla.org/en-US/docs/Web/CSS/left) properties determine the final location of positioned components.

## Properties

{% tabs %}
{% tab title="None" %}
The component has no position property.
{% endtab %}

{% tab title="Static" %}
The component is positioned according to the normal flow of the web app. The [`top`](https://developer.mozilla.org/en-US/docs/Web/CSS/top), [`right`](https://developer.mozilla.org/en-US/docs/Web/CSS/right), [`bottom`](https://developer.mozilla.org/en-US/docs/Web/CSS/bottom), [`left`](https://developer.mozilla.org/en-US/docs/Web/CSS/left), and [`z-index`](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index) properties have _no effect_. This is the default value.  
{% endtab %}

{% tab title="Relative" %}
The element is positioned according to the normal flow of the web application, and then offset _relative to itself_ based on the values of `top`, `right`, `bottom`, and `left`. The offset does not affect the position of any other elements; thus, the space given for the component in the screen layout is the same as if position were `static`.  
 
{% endtab %}

{% tab title="Absolute" %}
The component is removed from the normal web app flow, and no space is created for the component in the screen layout. It is positioned relative to its closest positioned ancestor, if any; otherwise, it is placed relative to the initial [containing block](https://developer.mozilla.org/en-US/docs/Web/CSS/Containing_Block). Its final position is determined by the values of `top`, `right`, `bottom`, and `left`.
{% endtab %}

{% tab title="Fixed" %}
The component is removed from the normal web apps, and no space is created for the element in the page layout. It is positioned relative to the initial [containing block](https://developer.mozilla.org/en-US/docs/Web/CSS/Containing_Block) established by the [viewport](https://developer.mozilla.org/en-US/docs/Glossary/viewport), except when one of its ancestors has a `transform`, `perspective`, or `filter` property set to something other than `none` , in which case that ancestor behaves as the containing block.  Its final position is determined by the values of `top`, `right`, `bottom`, and `left`.
{% endtab %}

{% tab title="Sticky" %}
The component is positioned according to the normal flow of the web app, and then offset relative to its _nearest scrolling ancestor_ and [containing block](https://developer.mozilla.org/en-US/docs/Web/CSS/Containing_Block) \(nearest block-level ancestor\), including table-related elements, based on the values of `top`, `right`, `bottom`, and `left`. The offset does not affect the position of any other elements.
{% endtab %}
{% endtabs %}

  


