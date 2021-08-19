const app = require('./server');

const port = process.env.PORT || 5000;
app.listen(port, (err) => {
  if (err) {
    console.error('Something bad happened');
  } else {
    console.log(`server is listening on ${port}`);
  }
});