---
description: Kicking off automations
---

# Triggers

Each automation must have a single trigger step, this is essentially a watcher - waiting for a particular condition to be met at which point the process will kick off.

Currently there are three main ways that an automation can be triggered:

1. Saving a [row]() to a particular [table](../../data/tables/)
2. Deleting a [row]() from a particular [table](../../data/tables/)
3. An external trigger in the form of a JSON [Webhook](https://en.wikipedia.org/wiki/Webhook)

Triggers are internal to the Budibase system and therefore cannot easily be altered - if you have an idea for a good trigger then let us know on our main [Github repo](https://github.com/Budibase/budibase/issues)! It is also possible to create custom triggers using the external Webhook, create an external application that will trigger on your required conditions and target your Budibase Webhook!

