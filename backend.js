const express = require('express')
var cors = require('cors')
const mysql = require('mysql')
const app = express()
const port = 3000

app.use(cors())
app.use(express.json())


app.get('/', (req, res) => {
  res.send('Hello World!')
})

//termektipus lekerdezese
app.get('/tipus', (req, res) => {

  const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'butorok'
  })
  
  connection.connect()
  
  connection.query('SELECT * from tipus', (err, rows, fields) => {
    if (err) throw err
  
    console.log('The solution is: ', rows[0].tipus_nev)
    res.send(rows)
  })
  
  connection.end()
      
  
})

app.post('/felvitel', (req, res) => {
    //console.log(req.body.bevitel1)

    const connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'butorok'
    })
    
    connection.connect()
    
    connection.query('INSERT INTO tipus VALUES (NULL, "asd",4000,"barna",150,"fa");', (err, rows, fields) => {
      if (err) throw err
    
     
      res.send("Sikeres felvitel!")
    })
    
    connection.end()
       
    
  })


  app.post('/felvitel2', (req, res) => {
    //console.log(req.body.bevitel1)

    const connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 'butorok'
    })
    
    connection.connect()
    
    connection.query('INSERT INTO tipus VALUES (NULL, "'+req.body.bevitel1+'",'+req.body.bevitel2+',"'+req.body.bevitel3+'",'+req.body.bevitel4+',"'+req.body.bevitel5+'");', (err, rows, fields) => {
      if (err) throw err
    
     
      res.send("Sikeres felvitel!")
    })
    
    connection.end()
       
    
  })
app.listen(port, () => {
  console.log(`Example app listening on port: http://localhost:${port}`)
})