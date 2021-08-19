const app = require('./server');
// require("dotenv").config();
const port = 8000; //process.env.PORT;

app.listen(port, (err) => {
  if (err) {
    console.error("Something bad happened");
  } else {
    console.log(`server is listening on ${port}`);
  }
});
