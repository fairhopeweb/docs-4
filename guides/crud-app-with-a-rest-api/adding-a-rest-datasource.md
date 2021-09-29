# Adding a REST datasource

First, we must add a new REST API connection and set up some basic configuration.

1. Click the “+” button, in the Data section.
2. Give your datasource a name - this is how it will appear in Budibase. I called mine “GitHub”.
3. Set the URL to `https://api.github.com`. All requests made through this connector will be prepended with this URL.
4. Add a new “Default Header” for “Authorization”, with the value  “token your-token” \(replace “your-token” with your GitHub personal access token. All requests made through this connection will include this header.
5. Click Save

{% embed url="https://youtu.be/h\_1gysdu37I" %}



  


