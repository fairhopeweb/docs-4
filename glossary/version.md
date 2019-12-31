# Version

A version is a record type in the admin database. It's parent record is Application... i.e. a version always belongs to a single application.

Every instance will be linked to one specific version, at any point in time.

A version comprises of

- Details about the version - such as name, date created etc.
- An "Application Package". A compressed file containing all the necessary files (code files, images etc) required to run this particular version of an application.