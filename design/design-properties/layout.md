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



### Justify-content \(horizontal alignment\)

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

{% tab title="Space-between" %}
[Flex items](https://www.w3.org/TR/css-flexbox-1/#flex-item) are evenly distributed in the line.

![](../../.gitbook/assets/space-between.png)
{% endtab %}

{% tab title="Space-around" %}
[Flex items](https://www.w3.org/TR/css-flexbox-1/#flex-item) are evenly distributed along the line, with half-size spaces on either end.

![](../../.gitbook/assets/space-around.png)
{% endtab %}

{% tab title="Space-evenly" %}
Flex-items are evenly distributed with a full-size space on either end

![](../../.gitbook/assets/space-evenly.png)
{% endtab %}
{% endtabs %}



### Align-items \(vertical alignment\)

The **`align-items`** property sets the default alignment for the objects within the container.

{% tabs %}
{% tab title="Flex-start" %}
Flex items are packed toward the start of the flex container.

![](../../.gitbook/assets/align-start.png)
{% endtab %}

{% tab title="Flex-end" %}
Flex items are packed toward the end of the flex container.

![](../../.gitbook/assets/align-end.png)
{% endtab %}

{% tab title="Center" %}
Flex items are packed toward the center of the flex container.

![](../../.gitbook/assets/align-center.png)
{% endtab %}

{% tab title="Baseline" %}
Flex items are aligned such that their [flex container baselines](https://drafts.csswg.org/css-flexbox-1/#flex-baselines) align.

![](../../.gitbook/assets/align-baseline.png)
{% endtab %}

{% tab title="Stretch" %}
[Flex items](https://www.w3.org/TR/css-flexbox-1/#flex-item) are evenly distributed along the line, with half-size spaces on either end.

![](../../.gitbook/assets/align-stretch.png)
{% endtab %}
{% endtabs %}



### Wrap

The **`flex-wrap`** property sets whether flex items are forced onto one line or can wrap onto multiple lines.

{% tabs %}
{% tab title="Wrap" %}
Flex items break into multiple lines. A must-have for responsive design. 

![](../../.gitbook/assets/wrap.png)
{% endtab %}

{% tab title="No wrap" %}
Flex items are laid out in a single line which may cause the flex container to overflow.

![](../../.gitbook/assets/no-wrap.png)
{% endtab %}
{% endtabs %}



### Gap

The gap property sets the gaps \(gutters\) between rows and columns. It is a shorthand for row-gap and column-gap. It's a great property for spacing and comes in handy when working with the repeater.

{% hint style="info" %}
The Gap property does not render in the Budibase builder but does in your application and in preview mode. This is due to Electron using an old version of Chrome -  the Gap property is new to Chrome. 
{% endhint %}

## Helpful resources:

{% embed url="https://yoksel.github.io/flex-cheatsheet/\#section-display" %}

{% embed url="https://flexboxfroggy.com/" %}

{% embed url="https://www.w3.org/TR/css-flexbox-1/\#flex-containers" %}





