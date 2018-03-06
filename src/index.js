const express = require("express");

const app = express();
app.get("/", (req, res) => res.json({ works: true }));
app.listen(process.env.PORT || 8080);