const express = require("express");
const cors = require("cors");
const app = express();
const pool = require("./db");
const recipesRouter = require("./routes/recipes.js"); // Correct the path to recipes.js

app.use(cors());
app.use(express.json());

// Use the router under the "/recipes" path
app.use("/recipes", recipesRouter);

app.listen(5000, () => {
  console.log("Server Running");
});
