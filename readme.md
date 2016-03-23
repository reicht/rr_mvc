# Request / Response MVC!

Preferred use:

Run bin/server.rb in Terminal and then interact with the given server through Postman.

Given this request `http://localhost:3001/users` You should see ALL the users from the array printed out to me with an appropriate response code.

Given this request `http://localhost:3001/users/#` You should see ONLY the user from the array at that index.

Given this request `http://localhost:3001/users/9999999` You should see a message saying it was not found and the appropriate response code returned to you.


Known oddities:

`http://localhost:3001/users/` will return a void of nothingness.
