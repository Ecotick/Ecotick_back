const routes = require('express').Router();
const db = require('../db-config');

// define the index route
routes.get('/', (req, res) => {
  console.log('A new request just hit the API !');
  res.send("Welcome to Express");
});

module.exports = routes;