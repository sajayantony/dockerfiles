const express = require('express')
const app = express()
var path = require('path');
app.get('/', (req, res) => res.sendFile(path.join(__dirname + '/bhutan.png')));

var port = process.env.PORT || 8080;
app.listen(port, () => { 
    console.log('App listening on port ' + port)
})
