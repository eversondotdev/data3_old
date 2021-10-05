const express = require('express')
const app = express()
const cors = require('cors')

app.use(
    cors({
        origin: '*',
        methods: ['GET'],
        credentials: true
    })
)

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

const revenue_by_segmentRoutes = require('./routes/revenue_by_segment')
app.use('/revenue_by_segment', revenue_by_segmentRoutes)

//LISTEN
app.listen(port, () => {
    console.log(`server running on ${port}`)
})
