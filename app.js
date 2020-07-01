const express = require('express');
const bodyParser = require('body-parser');
const Router = require('express');
const router = Router();

const app = express();
const PORT = 3000;

app.use(bodyParser.json());

// Midware header
app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header(
    'Access-Control-Allow-Methods',
    'GET, POST, HEAD, OPTIONS, PUT, PATCH, DELETE'
  );
  res.header(
    'Access-Control-Allow-Headers',
    'Origin, X-Requested-With, Content-Type, Accept, x-access-token'
  );
  res.header('Access-Control-Expose-Headers', 'x-access-token');
  next();
});
// ---------------------------------------------------------

app.use('/api/v1/tasks', require('./routes/tasks'));

app.listen(PORT, () => {
  console.log(`Node Server is running on port ${PORT}`);
});
