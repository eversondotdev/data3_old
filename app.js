const express = require('express')
const app = express()
const cors = require('cors')

//CORS SETTINGS
app.use(
    cors({
        origin: '*',
        methods: ['GET'],
        credentials: true
    })
)

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

const annual_report = require('./routes/annual_report')
app.use('/annual_report', annual_report)

const annual_stock_price = require('./routes/annual_stock_price')
app.use('/annual_stock_price', annual_stock_price)

//LISTEN
const port = process.env.PORT || 5000

app.listen(port, () => {
    console.log(`server running on ${port}`)
})
