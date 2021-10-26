const express = require('express')
const router = express.Router()
const pool = require('../db')

router.get('/:ticker_id', async(req, res, next) => {
    const { ticker_id } = req.params;
    try {
        const comapany = await pool.query('SELECT * from revenue_by_segment WHERE ticker_id = $1 AND year = 2020', [
            ticker_id
        ])

        res.json(comapany.rows)
    } catch (err) {
        console.log(err.message)
    }
})

module.exports = router