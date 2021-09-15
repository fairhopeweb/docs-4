---
description: Conditional and intermediate steps
---

# Logic

Sometimes it is necessary for your automation to make decisions as part of the process, for example if you wanted to send an email to a customer when their order enters the shipped state then you would need a logical step to handle this. An automation can have as many logical steps as you require, if you wish to filter against multiple different outputs from previous steps then this can be done with multiple filters.

Currently there are two main ways that logic can be executed in an automation:

1. Filtering against a specified field, with a particular operator and value to compare against
2. Delay, waiting a period of milliseconds before continuing

Our filter currently can handle checking a single input value against a single, if the condition is not met then the automation will stop execution, if two separate paths are required then two different automations can be used.

