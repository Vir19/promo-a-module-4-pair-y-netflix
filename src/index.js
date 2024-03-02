const express = require('express');
const cors = require('cors');
const mysql = require ('mysql2/promise');

// create and config server
const server = express();
server.use(cors());
server.use(express.json());

// init express aplication
const serverPort = 4000;
server.listen(serverPort, () => {
  console.log(`Server listening at http://localhost:${serverPort}`);
});

//Conectar con la base de datos
async function getConnection() {
  const connection = await mysql.createConnection({
    host: 'localhost',
    database: 'Netflix',
    user: 'root',
    password: 'maialen',
  });
  await connection.connect();

  console.log(
    `Conexión establecida con la base de datos (identificador=${connection.threadId})`
  );

  return connection;
}

//Endpoint

server.get ('/movies', async (req, res) => {
  const connection = await getConnection();
  const [results] = await connection.query('SELECT * FROM movies');
  res.json({
    success: true,
    movies:  results
  });
  connection.close;
}
);