---
description: Using previous step outputs in later steps
---

# Contextual bindings

The real power in Budibase automations is the ability to make use of the outputs from previous steps later on. This can be as simple as using information about a newly saved row which the automation has triggered on or it could be the result of an external API call.

Throughout the system we have used the same [mustache syntax](https://mustache.github.io/mustache.5.html) when we allow an input to be based on current state and we have built a binding editor into the builder which will help build valid syntax.

## Using bindings

The state of an automation will build up the further you move through it, this is made obvious by our binding editor as it adds all of the previous steps outputs onto the list of options that can be used. The values cannot and will not change throughout execution, once they have been set they are fixed, however if you wish to combine multiple steps outputs into a single output you can do something like:

```text
{{ trigger.record.salesPerson }} just made a sale to {{ trigger.record.customer }}!
```

Our binding editor will keep track of all of the outputs from previous steps but it will not have an understanding of the properties that exist as part of them. In the binding editor you will notice that some properties such as `Record` will be listed as type object. These particular properties will require you to add the name of a property you wish to make use of - an example of this might be:

* You have a [table](../data/tables/) which holds a list of sales people, with a [column](../data/tables/columns.md) for their email address called _EmailAddress_
* An automation is created which triggers on the creation of a new sales person
* You wish to send an email to the sales person to welcome them to the system, in which case you would bind to the `{{ trigger.record }}` in your send email action and add the _EmailAddress_ property yourself, so it appears as `{{ trigger.record.EmailAddress }}`

Below is a short video showing how the contextual bindings can be used in a basic automation.

{% embed url="https://www.loom.com/share/f8aacdb20cc543c4abab310713749654" %}



