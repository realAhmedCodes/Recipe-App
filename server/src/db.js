const Pool = require("pg").Pool;


const pool = new Pool({
  user: "postgres", 
  password: "apple",
  host: "localhost",
  port: 5432,
  database: "recipeapp",
});

module.exports = pool;
