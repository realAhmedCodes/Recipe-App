const express = require("express");
const router = express.Router();

router.get("/recipes", (req, res) => {
  res.json({ message: "Hello from /recipes" });
});
router.get("/test", (req, res) => {
  res.json({ message: "Hello from /test" });
});

module.exports = router;
