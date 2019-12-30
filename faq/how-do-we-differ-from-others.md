# How does Budibase differ from Framer (and Storybook and Modulz etc)

As far as I can tell (without much research into them), they are front end builders. Their output if HTML, CSS and JS.

Budibase if more like Framer + Firebase + API Calls to Firebase + Data binding in the front end.

The Budibase builder is a full stack app builder. You build

- A backend
  - "Records", with "Fields" that are typed
  - "Indexes" - which are collections of records, modified using map/reduce
  - "Validation Rules" - written in javascript which are run against records
  - "Access Levels" - define user levels, and what database operations they have access to
  - Plugins - the ability to write custom javascript to run on the back end

- A Front End
  - Import Budibase component librarys from NPM, or write your own
  - Import styleshees, e.g. Bootstrap
  - Setup event handlers (e.g. onClick, onLoad..) - from a predefined list of handler, which are mostly API calls (e.g. "Save Record")
  - Using the Builder (visually) create "inherited" components... e.g. using the budibase "Button" component, create a "Primary Button" - with styles applied to the button
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