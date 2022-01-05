const express = require('express')
var cors = require('cors')
const app = express()
const port = 3000

app.use(express.static('kepek'))

app.use(express.json())

app.use(cors())
//----------------------------------------------------------------------------alap lekérdezés----------------------------------------------------------------------------------------------

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
       
      
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
 
 

  })
  //-----------------------------------------------------------------------a. l. vége-----------------------------------------------------------------------------------------------------

app.get('/', (req, res) => {
  res.send('Hello World!')
})

//-----------------------------------------------------------szavazat felvitel------------------------------------------------------------------------------------------------------------

app.post('/szavazatfelvitel', (req, res) => {

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'animedb'
  })
  
  connection.connect()
  
  connection.query('INSERT into szavazatok values (null, '+req.body.bevitel1+' )', function (err, rows, fields) {
    if (err) throw err
  
    console.log("Szavazatát rögzítettük!")
    res.send("Szavazatát rögzítettük!")
  })
  
  connection.end()

})


//-----------------------------------------------------------megjelenés szerinti keresés--------------------------------------------------------------------------------------------------

app.get('/ketezer', (req, res) => {
  

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'animedb'
})

connection.connect()
    
    connection.query('SELECT * FROM `animek` WHERE `anime_megjdatum`<="2000-12-31"', function (err, rows, fields) {
       // if (err) throw err;
      
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
 
 

  })

  app.get('/ezertiz', (req, res) => {
  

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'animedb'
  })
  
  connection.connect()
      
      connection.query('SELECT * FROM `animek` WHERE `anime_megjdatum`>"2000-12-31" AND anime_megjdatum<"2011-01-01"', function (err, rows, fields) {
         // if (err) throw err;
        
        console.log(rows)
        res.send(rows)
      })
      
      connection.end()
   
   
  
    })

    app.get('/ezerhusz', (req, res) => {
  

      var mysql = require('mysql')
      var connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'animedb'
    })
    
    connection.connect()
        
        connection.query('SELECT * FROM `animek` WHERE `anime_megjdatum`>"2010-12-31" AND anime_megjdatum<"2021-01-01"', function (err, rows, fields) {
           // if (err) throw err;
          
          console.log(rows)
          res.send(rows)
        })
        
        connection.end()
     
     
    
      })

      app.get('/huszfelett', (req, res) => {
  

        var mysql = require('mysql')
        var connection = mysql.createConnection({
          host: 'localhost',
          user: 'root',
          password: '',
          database: 'animedb'
      })
      
      connection.connect()
          
          connection.query('SELECT * FROM `animek` WHERE `anime_megjdatum`>"2020-12-31"', function (err, rows, fields) {
             // if (err) throw err;
            
            console.log(rows)
            res.send(rows)
          })
          
          connection.end()
       
       
      
        })

//-----------------------------------------------------------műfaj szerinti keresés-------------------------------------------------------------------------------------------------------

app.get('/Fantasy', (req, res) => {
  

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'animedb'
})

connection.connect()
    
    connection.query('SELECT * FROM `animek` WHERE `anime_mufaj` LIKE "%Fantasy%"', function (err, rows, fields) {
       // if (err) throw err;
      
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
 
 

  })


app.get('/Drama', (req, res) => {
  

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'animedb'
})

connection.connect()
    
    connection.query('SELECT * FROM `animek` WHERE `anime_mufaj` LIKE "%Drama%"', function (err, rows, fields) {
       // if (err) throw err;
      
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
 
 

  })



app.get('/Comedy', (req, res) => {
  

  var mysql = require('mysql')
  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'animedb'
})

connection.connect()
    
    connection.query('SELECT * FROM `animek` WHERE `anime_mufaj` LIKE "%Comedy%"', function (err, rows, fields) {
       // if (err) throw err;
      
      console.log(rows)
      res.send(rows)
    })
    
    connection.end()
 
 

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
  //<------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
