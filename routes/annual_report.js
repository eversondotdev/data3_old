const express = require('express')
const router = express.Router()
const pool = require('../db')

router.get('/:ticker_id', async(req, res, next) => {
    const { ticker_id } = req.params;
    try {
        const comapany = await pool.query('SELECT * from annual_report WHERE ticker_id = $1', [
            ticker_id
        ])

        res.json(comapany.rows)
    } catch (err) {
        console.log(err.message)
    }
})

module.exports = router