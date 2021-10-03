const Pool = require("pg").Pool

const pool = new Pool({
    user: "postgres",
    password: "42d4t4XY",
    database:"data3db",
    host:"data3db.cpbtng9lwcra.us-east-1.rds.amazonaws.com",
    port: 5432
})

module.exports = pool
