---
description: Performing tasks in automations
---

# Actions

Actions are the core of automations, these can carry out updates on a table, call to an external service, send emails and so on. We have built our action system to be easily extensible so actions can be added to the system at any time! Your automation can have many actions, allowing you to perform many different tasks as part of a single trigger.

Below is a few examples of actions that exist today however there may be many more when you look in the builder, to get a full list install the builder and check it out!

1. Create row, this will create a new [row]() in a specified [table](../../data/tables/)
2. Update row, can be used to update a [row]() which was triggered upon
3. Delete row, delete a specified row from a [table](../../data/tables/), like something that was triggered upon
4. Send an email, as it suggests, send an email based on the specified inputs

The real power in actions is the ability to make use of outputs from previous steps, how to do this will be covered in the [contextual inputs section](../contextual-bindings.md).

We welcome ideas for further action steps, in-fact our system has been designed around making the development and deployment of new actions easy! If you have an idea for a new automation action and would like to pass it along to us, or even have a go at developing it yourself, check out our [Automations repo on Github](https://github.com/Budibase/automations)!

