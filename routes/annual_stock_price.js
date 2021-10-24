const express = require('express')
const router = express.Router()
const pool = require('../db')

router.get('/:ticker_id', async(req, res, next) => {
    const { ticker_id } = req.params;
    try {
        const comapany = await pool.query('SELECT * from annual_stock_price WHERE ticker_id = $1 AND price > 0 ORDER BY date ASC', [
            ticker_id
        ])

        res.json(comapany.rows)
    } catch (err) {
        console.log(err.message)
    }
})

module.exports = router