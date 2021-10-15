const Pool = require("pg").Pool

const pool = new Pool({
    user: "postgres",
    password: "42d4t4XY!",
    database:"data3_local",
    host:"localhost",
    port: 5432
})

module.exports = pool
