# Is my application a good fit for Budibase?

The output of the Budibase builder is

- A single page web application (SPA). This can also be a Progessive Web Application (PWA), on the roadmap for the near future.
- An HTTP Rest API, used to save your data objects, and run your custom backend code.

On the backend, data is physically separated into "Instances". An "Instance" is an individual dataset. 

Each of your "Customers" would normally have one instance, holding their data - with one or more users created against that instance.

You could also use instances for your "Environments"... e.g a Dev, Test, Preprod instance.

If your application uses a "Shared database" model, it may be a less appropriate fit for Budibase. For example, a forum, or marketplace  - where all users are accessing the same dataset. Budibase can still integrate with shared databases however.

We will discuss this in more detail, in a later chapter.