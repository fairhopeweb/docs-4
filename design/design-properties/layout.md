---
description: Learn more about the Layout design properties within Budibase
---

# Layout

The Layout design properties revolve around Flexbox. The Flexible Box Layout Module makes it easier to design flexible responsive layout structures. It is commonly known by the shorthand 'Flex'. 

## Properties:

The Layout section comes with the following settings:

### Display

The **`display`** property sets whether an element is treated as a [block or inline element](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flow_Layout). This is a critical element of responsive design.

{% tabs %}
{% tab title="Flex" %}
The Flex display property behaves like a block.

![](../../.gitbook/assets/flex.png)
{% endtab %}

{% tab title="Inline Flex" %}
The Inline Flex display property behaves like an inline block.

![](../../.gitbook/assets/inline-flex%20%281%29.png)
{% endtab %}
{% endtabs %}

### 

### Flex-direction

The [flex-direction](https://yoksel.github.io/flex-cheatsheet/#section-flex-direction) property specifies how [flex items](https://www.w3.org/TR/css-flexbox-1/#flex-item) are placed in the flex container, by setting the direction of the flex container’s [main axis](https://www.w3.org/TR/css-flexbox-1/#main-axis). This determines the direction in which flex items are laid out.

{% tabs %}
{% tab title="Row" %}
Display objects in a row. 

![](../../.gitbook/assets/row.png)
{% endtab %}

{% tab title="Reverse Row" %}
Same as row, but reversed.

![](../../.gitbook/assets/reverse-row.png)
{% endtab %}

{% tab title="Column" %}
Display objects in a column. 

![](../../.gitbook/assets/column.png)
{% endtab %}

{% tab title="Reverse Column" %}
Same as column, but reversed.

![](../../.gitbook/assets/reverse-column.png)
{% endtab %}
{% endtabs %}



### Justify-content 

The [justify-content](https://yoksel.github.io/flex-cheatsheet/#section-justify-content) property dictates how objects are spaced out along a column or row. 

{% tabs %}
{% tab title="Flex-start" %}
[Flex items](https://www.w3.org/TR/css-flexbox-1/#flex-item) are packed toward the start of the line. 

![](../../.gitbook/assets/flex-start.png)
{% endtab %}

{% tab title="Flex-end" %}
[Flex items](https://www.w3.org/TR/css-flexbox-1/#flex-item) are packed toward the end of the line.

![](../../.gitbook/assets/flex-end.png)
{% endtab %}

{% tab title="Center" %}
[Flex items](https://www.w3.org/TR/css-flexbox-1/#flex-item) are packed at the center of the line.

![](../../.gitbook/assets/center.png)
{% endtab %}
{% endtabs %}









## Helpful resources:

{% embed url="https://yoksel.github.io/flex-cheatsheet/\#section-display" %}

{% embed url="https://flexboxfroggy.com/" %}

{% embed url="https://www.w3.org/TR/css-flexbox-1/\#flex-containers" %}





