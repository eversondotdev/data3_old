const express = require('express')
const app = express()
// const pool = require('./db')

app.use(express.json())

app.get('/', function(req, res){
    res.send('I think its working')
})

// //All companies profiles
// app.get('/profiles', async(req, res) => {
//     try {
//         const companies = await pool.query('SELECT * FROM profiles')

//         res.json(companies.rows)
//     } catch (err) {
//         console.log(err.message)
//     }
// })

// //A single company profile
// app.get('/profiles/:id', async (req, res) => {
//     const { id } = req.params;
//     try {
//         const comapany = await pool.query('SELECT * from profiles WHERE id = $1', [
//             id
//         ])

//         res.json(comapany.rows[0])
//     } catch (err) {
//         console.log(err.message)
//     }
// })

const port = process.env.PORT || 5000

app.listen(port, () => {
    console.log(`server running on ${port}`)
})
