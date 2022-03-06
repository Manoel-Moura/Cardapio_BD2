import { Router } from "express"; // importr apenas o Routers do express

import UC from "./app/controllers/UserController";

import PC from "./app/controllers/ProdutoController";

import SC from "./app/controllers/SessionController";

const cors = require("cors");

const routes = new Router();

/////////////////////////////USUARIO///////////////////////////////////////


routes.post("/user", cors() , UC.store);

routes.post("/login", cors() , SC.store);


/////////////////////////////PRODUTO///////////////////////////////////////


routes.post("/produto", cors(), PC.store);



routes.get("/produtos", cors(), PC.get);
routes.get("/buscaIdProduto/:id", cors(), PC.getId);
routes.get("/buscaCategoriaProduto/:categoria", cors(), PC.procuraCategoriaProduto);


routes.put("/updateNome", cors(), PC.update);
routes.put("/updateIngredientes", cors(), PC.updateIngredientes);
routes.put("/updatePreco", cors(), PC.updatePreco);
routes.put("/updateCategoria", cors(), PC.updateCategoria);
routes.put("/updateImagem", cors(), PC.updateImage);



routes.delete("/deleteProduto", cors(), PC.deleteProduto);

export default routes;