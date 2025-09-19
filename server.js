import express from "express";
import dotenv from "dotenv";

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send(`<h1>${process.env.MESSAGE}</h1>`);
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
