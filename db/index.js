const mysql = require('mysql');

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'Task',
});

// connections
db.connect(function (err) {
  if (err) throw err;
  console.log('Connected to MySQL Database');
});

module.exports = db;
