const express = require('express')
var cors = require('cors')
const app = express()
const port = 3000

app.use(express.static('kepek'))

app.use(cors())

app.get('/animek', (req, res) => {
 
    var mysql = require('mysql')
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'animedb'
})
    
    connection.connect()
    
    connection.query('SELECT * from animek', function (err, rows, fields) {
       // if (err) throw err;
      
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
 
 

  })

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.get('/Action', (req, res) => {
  

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'animedb'
})

connection.connect()
    
    connection.query('SELECT * FROM `animek` WHERE `anime_mufaj` LIKE "%Action%"', function (err, rows, fields) {
       // if (err) throw err;
      
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
 
 

  })

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
