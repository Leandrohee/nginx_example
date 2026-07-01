import express from "express";

const app = express();
const PORT = 2222;

app.get("/user/:id", (req, res) => {
  const { id } = req.params;

  res.send(`This is the user ${id} from the node server.`);
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});