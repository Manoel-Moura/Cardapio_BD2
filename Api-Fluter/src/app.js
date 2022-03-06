import express from "express";
import routes from "./routes";
import './database';
// import express from "cors";

const cors = require('cors');

class App {
  constructor() {
    this.server = express(); // igual a variavel roras
    this.middlewares();
    this.routes();
  }


  middlewares() {

    //cadastrar todos os middlewares da aplicação
    this.server.use(express.json());
  }

  routes() {
    this.server.use(cors());
    this.server.use(routes);
  }
}

//module.exports = new App().server; //exportar o server para outro arquivo;

export default new App().server;