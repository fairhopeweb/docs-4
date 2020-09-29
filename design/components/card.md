---
description: Learn about the Cards component within Budibase
---

# Card

Use the Card component to display data from your tables to your users in a structured, repetitive manner. Cards contain content and in some cases images and actions about a single subject. There is currently two types of Card component; vertical and horizontal. 

{% hint style="info" %}
Important!   
If you select the Magic Repeater component, select a table, and add the Card component to it, you can generate multiple cards at once.
{% endhint %}

![](../../.gitbook/assets/card.png)

## How to add a new Card

To add a new Card to your designs:

* [ ] Click the `card` button
* [ ] Select the card type you would like to add

## How to display data from your tables as Cards 

* [ ] Click the layout dropdown, and select the `Magic Repeater` component
* [ ] Link your Magic Repeater component to the Table which contains the data you would like to display
* [ ] Click the Card component dropdown, and select a Card type
* [ ] In the Card's Setup panel, find the Heading property, and click the ✎ icon.
* [ ] You 

## How to style your Card

There are 2 types of Cards within Budibase:

### Vertical

The Vertical Card is structured in a vertical manner - items are stacked on top of each other.

The Vertical Card component comes with the following settings:

| Setting | Required | Description |
| :--- | :--- | :--- |
| Name | Yes | Change the name of the component |
| Table | Yes | Choose a table to link your chart to |
| Name Field | Yes | Select the column would you like to set as your categories |
| Value Field | Yes | Select the column you would like to display as your values \(must be a number data type\) |
| Animate chart | No | Tell your chart to load in an animated fashion |
| Hover highlight | No | Tell your chart to display the relevant value when the user hovers |
| Keep last hover | No | Tell your chart to continue to present the last value hovered  |
| Colors | No | Select different color palettes |
| Legend width | No | Control the width of the accompanying legend |

### Horizontal

