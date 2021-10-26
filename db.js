const Pool = require("pg").Pool
require('dotenv').config();

const Config = {
    // user: process.env.PG_USER,
    // password: process.env.PG_PASSWORD,
    // database: process.env.PG_DATABASE,
    // host: process.env.PG_HOST,
    // port: process.env.PG_PORT
    user: 'fxafqgcexjcgbz',
    password: '0026215ee707f253d5f34f8417c51b9187aa3642aedf07282a83ca6fd9561521',
    database: 'd9stm6emcnpse4',
    host: 'ec2-34-199-209-37.compute-1.amazonaws.com',
    port: 5432
}

const pool = new Pool(Config)

module.exports = pool
