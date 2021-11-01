const express = require('express')
const app = express()
const cors = require('cors')
const port = process.env.PORT || 5000

//CORS SETTINGS
app.use(
    cors({
        origin: '*'
    })
)

app.use(express.json()) // allows to access the req.body

//INDEX
app.get('/', (req, res, next) => {
    res.send('<h1>INDEX API</h1><ul> <li>List1</li> </ul>')
})

//ROUTES
const profilesRoutes = require('./routes/profiles')
app.use('/profiles', profilesRoutes)

const competitorsRoutes = require('./routes/competitors')
app.use('/competitors', competitorsRoutes)

const revenue_by_segment_2020Routes = require('./routes/revenue_by_segment_2020')
app.use('/revenue_by_segment_2020', revenue_by_segment_2020Routes)

const revenue_by_segment_2019Routes = require('./routes/revenue_by_segment_2019')
app.use('/revenue_by_segment_2019', revenue_by_segment_2019Routes)

const revenue_by_segment_2018Routes = require('./routes/revenue_by_segment_2018')
app.use('/revenue_by_segment_2018', revenue_by_segment_2018Routes)

const revenue_by_regionRoutes = require('./routes/revenue_by_region')
app.use('/revenue_by_region', revenue_by_regionRoutes)

const annual_report = require('./routes/annual_report')
app.use('/annual_report', annual_report)

const stock_price = require('./routes/stock_price')
app.use('/stock_price', stock_price)

const annual_stock_price = require('./routes/annual_stock_price')
app.use('/annual_stock_price', annual_stock_price)

app.listen(port, () => {
    console.log(`server running on ${port}`)
})
