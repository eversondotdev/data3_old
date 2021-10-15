const express = require('express')
const router = express.Router()
const pool = require('../db')

//All profiles
router.get('/', async(req, res, next) => {
    try {
        const companies = await pool.query('SELECT * FROM profiles')
        res.json(companies.rows)
    } catch (err) {
        console.log(err.message)
    }
})

//A single profile by id
router.get('/:id', async(req, res, next) => {
    const { id } = req.params;
    try {
        const comapany = await pool.query('SELECT * from profiles WHERE id = $1', [
            id
        ])
        res.json(comapany.rows[0])
    } catch (err) {
        console.log(err.message)
    }
})

module.exports = router