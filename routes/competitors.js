const express = require('express')
const router = express.Router()
const pool = require('../db')

router.get('/:ticker', async(req, res, next) => {
    const { ticker } = req.params;
    try {
        const comapany = await pool.query('SELECT * from competitors WHERE ticker = $1', [
            ticker
        ])

        res.json(comapany.rows)
    } catch (err) {
        console.log(err.message)
    }
})

module.exports = router