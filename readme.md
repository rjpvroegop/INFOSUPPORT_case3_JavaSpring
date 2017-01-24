#Kantilever backend

To access the API, use the base URL with the required parameters.
For example, to find the stock item with `id == 1`, use the following url in development mode:

>http://localhost:10001/bsvoorraadbeheer/stock/1

## Discovery server

### Ports

**Eureka**: 10000

**Zuul API**: 10001

**BSCatalogusbeher**: 10003

**BSKlantbeheer**: 10005

**BSBestellingenbeheer**: 10007

**BSVoorraadbeheer**: 10009

**PcSBestellen**: 10011

## Zuul API

### API Methods

**/bsvoorraadbeheer**

Redirects the API calls to the voorraadbeheer API endpoints

##Business Services

###Voorraadbeheer

####API Methods

---

> GET **/stock**

Returns one array with all stock items.

Example: `[{"productId":1,"stock":3}]`

---

> GET **/stock/{stockitemId}**

Returns one stockitem.

Example: `{"productId":1,"stock":3}`

---

> GET **/stock/csv**

Returns the stock items in a CSV file

---

> PUT **/stock/csv/interval**

Change the CSV Generator interval in minutes

The request body should be an integer representing the amount of minutes.

---