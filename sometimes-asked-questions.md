# Sometimes Asked Questions

Just adding questions and answers as we go here...

### Why did we pick Svelte over React and others

One goal of Budibase's front end is to be framework agnostic. We want people to be able to write their own components, however they please, when there are not pre-built options for them.

Svelte compiles down to vanilla javascript at build time - the Svelte library is not actually included in your build. This makes it perfect for us to build our standard components and librarys with. Components built with svelte have no dependencies, therefore there can be now version clashes. 

Technically, we did not have to build the Budibase builder in Svelte - as the builder itself does not get packaged with a Budibase app. However, I felt it was wise to use Svelte anyway, for consistency and to build that experience.

Having used Svelte to build Budibase, whilst simultaneously using React in my day job (consistently for about 2 years), I can honestly say that I prefer Svelte and would have no problem choosing it again for future projects. The ecosystem is nowhere near as large as React, and the tooling not as mature - but i still prefer to develop with Svelte. A longer story, for another post!

### How does Budibase differ from Framer (and Storybook and Modulz etc)

As far as I can tell (without much research into them), they are front end builders. Their output if HTML, CSS and JS.

The Budibase builder is a full stack app builder. You build
- A backend
    - "Records", with "Fields" that are typed
    - "Indexes" - which are collections of records, modified using map/reduce
    - "Validation Rules" - written in javascript which are run against records
    - "Access Levels" - define user levels, and what database operations they have access to
    - Plugins - the ability to write custom javascript to run on the back end

- A Front End
    - Import Budibase component librarys from NPM, or write your own
    - Using the Builder (visually) create "inherited" components... e.g. using the budibase "Button" component, create a "Primary Button" - with styles applied the the button
    - Combine components to make more complex components ... e.g. "Customer Record"

Once you've built your app, you get:
- An HTTP Api
    - With CRUD endpoints for your records and indexes
    - Validaion rules applied to records when saved
    - Authorization rules applied based on configured access levels
    - Authentication
- A Single Page Application
    - Validation rules applied to records before they are POSTed to the API
    - Components are data-bound to client side state (which is loaded from the backend)
    - Authorization rules applied to components (e.g. Greyed out buttons)
- An App management platform
    - Create new "Instances" (databases) ... see below where I describe the Budibase scaling model
    - Add/remove/disable users to instances (also possible from inside the app itself of course)
    - Instance versioning. e.g. Customer "ACME inc" is on Version 1 of your app, but "MadProducts Inc." is on Version 2


### Budibase scaling models - aka "Why can't I build Facebook ? "

Budibase is designed for a specific scaling model. Simply put, its "Many smaller instances". By "smaller", I mean not Facebook, Amazon. Budibase is intended to be able to handle a very large amount of instances (=databases), each databse having potentially low-thousands of users.

A bit like Salesforce. When you create a Salesforce instance - this instance is your data only, physically separated from other instances.

Having said that - building a Facebook is still partially possible. You build the user-centric parts with Budibase (Photo albums, account settings). You then build the social graph with a cassandra backed service, and inegrate the two. It can still work well - you just cant build the whole thing wit Budibase. Facebook may be a poor example, but hopefully you get the point. 