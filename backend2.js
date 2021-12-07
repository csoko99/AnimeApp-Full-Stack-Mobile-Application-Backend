const express = require('express')
var cors = require('cors')
const app = express()
const port = 3000

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




  app.use(express.json());

  app.post('/felvitel_animek', (req, res) => {
 

    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'animedb'
    })
    
    connection.connect()
    

    console.log(req.body.bevitel2);

    connection.query('INSERT INTO sorozatok (`anime_id`, `anime_nev`, `anime_megjdatum`, `anime_mufaj`, `anime_evadsz`) VALUES (NULL, "'+req.body.bevitel2+'" , "'+req.body.bevitel3+'", '+req.body.bevitel4+' , '+req.body.bevitel5+', "'+req.body.bevitel6+'")', function (err, rows, fields) {
        //if (err) throw err;
      
      res.send("Sikerült")
    })
    
    connection.end()
 
 

  })