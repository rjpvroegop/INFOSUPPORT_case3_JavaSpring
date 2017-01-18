#Kantilever backend

## Zuul API

#### API Methods

**/bsvoorraadbeheer**

Redirects the API calls to the voorraadbeheer API endpoints

##Business Services

###Voorraadbeheer

####API Methods

GET **/stock**

Returns one array with all stock items.

Example: `[{"productId":1,"stock":3}]`

GET **/stock/{stockitemId}**

Returns one stockitem.

Example: `{"productId":1,"stock":3}`

GET **/stock/csv**

Returns the stock items in a CSV file

PUT **/stock/csv/interval**

Change the CSV Generator interval in minutes

The request body should be an integer representing the amount of minutes.