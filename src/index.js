const express = require("express");
const cors = require("cors");
const mysql = require("mysql2/promise");

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
    host: "localhost",
    database: "netflix",
    user: "root",
    password: "VirGiNiA5619?",
  });
  await connection.connect();

  console.log(
    `Conexión establecida con la base de datos (identificador=${connection.threadId})`
  );

  return connection;
}

//Endpoint

server.get("/movies", async (req, res) => {
  const connection = await getConnection();
  if (!req.query.genre) {
    const queryGetMovieGenre =   `SELECT * FROM netflix.movies`
    const [results] = await connection.query(
      queryGetMovieGenre);
      res.json({
        success: true,
        movies: results,
      });
      console.log(results);
      connection.close;
  }
  else {
    const genreFilterParam = req.query.genre;
    const queryGetMovieGenre =   `SELECT * FROM netflix.movies
    WHERE genre = ?;`
    const [results] = await connection.query(
      queryGetMovieGenre, [ genreFilterParam ]
      );
      res.json({
        success: true,
        movies: results,
      });
      console.log(results);
      connection.close;
  }


});

//crear servidor de estáticos

const staticServerPathWeb = "./src/public-react";
server.use(express.static(staticServerPathWeb));

const staticServerPathImages = "./src/public-movies-images";
server.use(express.static(staticServerPathImages));
