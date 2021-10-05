const express = require('express')
const app = express()
const port = process.env.PORT || 5000

app.use(express.json())

//INDEX
app.get('/', (req, res, next) => {
    res.send('I think its working')
})

//ROUTES
const profilesRoutes = require('./routes/profiles')
app.use('/profiles', profilesRoutes)

const competitorsRoutes = require('./routes/competitors')
app.use('/competitors', competitorsRoutes)

//LISTEN
app.listen(port, () => {
    console.log(`server running on ${port}`)
})
