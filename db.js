const Pool = require("pg").Pool
require('dotenv').config();

const Config = {
    user: process.env.PG_USER,
    password: process.env.PG_PASSWORD,
    database: process.env.PG_DATABASE,
    host: process.env.PG_HOST,
    port: process.env.PG_PORT
}

const pool = new Pool(Config)

module.exports = pool
