---
description: Finalising your automation
---

# Activating and testing

The last step in creating your new automation is saving it with the _Save Automation_ button on the right panel and preparing to activate it. All automations will start initially in a inactive state, meaning that they will not attempt to process anything until you are ready for them to do so.

To active an automation simply click the big play button just next to the _Save Automation_ button, the automation will now be active in your builder.

You now have two options for testing your automation:

1. Trigger the automation using real data, for example writing a new [row](../data/tables/rows.md) to the [table](../data/tables/) which an automation has been configured to monitor
2. Using the _Test Automation_ button that will appear in the right panel when an automation has been saved

The second option can be useful for testing automations that are designed to be used with a webhook as otherwise these can be difficult to test. Whichever option you choose you should notice that the actions which were requested have been executed, e.g. if there was a _Create Row_ action in your automation this row should now exist.

If your automation does not run as expected then check that all input mustache syntax is valid and any filters put in place should pass.

Below is a video showing the testing of a very basic automation being activated and then tested.

{% embed url="https://www.loom.com/share/5e49f8af8a7149f886c6b038433d9f61" %}



