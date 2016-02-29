# Bluereq

**simple HTTP requests for promises lovers**
just wrapping [request](https://www.npmjs.com/package/request) with [bluebird](https://www.npmjs.com/package/bluebird). Forked from [qreq](https://www.npmjs.com/package/qreq)

# Installation
```sh
npm install bluereq
```

# How-to

```javascript
var breq = require('bluereq')
```

## the simple way

* **GET** / **HEAD** / **DELETE**

```javascript
breq.get(url) // or breq.head(url) or breq.delete(url)
.then(function (res) { // do your magic here } )
.catch(function (err) { // handle error } )
```

* **POST** / **PUT**
```javascript
breq.post(url, data) // or breq.put(url, data)
.then(function (res) { // do your magic here } )
.catch(function (err) { // handle error } )
```
Here, data is assumed to be an object to be posted/put as JSON. If it isn't the case use the more configurable way


## the more configurable way
Take advantage of [request](https://www.npmjs.com/package/request) configurability to customize your request

* **GET** / **POST** / **PUT** / **HEAD** / **DELETE**

```javascript
breq.get(config) // or breq.post(config) or breq.put(config) or breq.head(config) or breq.delete(config)
.then(function (res) { // do your magic here } )
.catch(function (err) { // handle error } )
```
where config is an object with at least a url set

Example:
```javascript
var config = {
  url: 'https://inventaire.io/api/tests/public',
  body: { love: 'from bluereq'},
  headers: {
    'content-type': 'application/x-www-form-urlencoded',
    'cookie': 'bimbamboumcookie=wunderbar'
  }
}
breq.post(config)
```

See [request documentation](https://www.npmjs.com/package/request) for more options
