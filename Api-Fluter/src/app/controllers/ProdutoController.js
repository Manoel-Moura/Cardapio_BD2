import Produto from '../models/Produto';

class produtoController {

  /// 1 - produto cadastrado com sucesso  
  async store(req, res) {

    const userExists = await Produto.findOne({ where: { nome: req.body.nome } });

    if (userExists) {
      return res.json({ resultado: 1});
    }
    
    const { nome, ingredientes, preco, categoria, imagemurl } =  
    await Produto.create(
      req.body
    );
    return res.json({ resultado: 0} );
  }



  async get(req, res, next) {
    const produtos = await Produto.findAll();
    res.json({produtos});
  }


  /// 0 - 
  async getId(req, res, next) {
    const { id } = req.params;
    const produto = await Produto.findByPk(id);
    if (!produto) {
      res.json({resultado: 1, produto:null});
    } else {
      res.json({ resultado: 0, produto});
    }
  }

  async update(req, res) {
    const { nome } = req.body;
    const { id } = req.body;
    const produto = await Produto.findByPk(id);
    if (!produto) {
      res.json({ resultado:1});
    } else {
      const newProduto = await produto.update({ nome: nome });
      res.json({ resultado:0});
    }
  }

  async updatePreco(req, res) {
    const { preco } = req.body;
    const { id } = req.body;
    const produto = await Produto.findByPk(id);
    if (!produto) {
      res.json({ resultado:1});
    } else {
      const newProduto = await produto.update({ preco: preco });
      res.json({resultado:0});
    }
  }

  async updateIngredientes(req, res) {
    const { ingredientes } = req.body;
    const { id } = req.body;
    const produto = await Produto.findByPk(id);
    if (!produto) {
      res.json({ resultado:1 });
    } else {
      const newProduto = await produto.update({ ingredientes: ingredientes });
      res.json({resultado:0});
    }
  }

  async updateCategoria(req, res) {
    const { categoria } = req.body;
    const { id } = req.body;
    const produto = await Produto.findByPk(id);
    if (!produto) {
      res.json({ resultado:1});
    } else {
      const newProduto = await produto.update({ categoria: categoria });
      res.json({resultado:0});
    }
  }

  async searchProduto(req, res) {
    const { nome } = req.params;

    const myProdutos = await Produto.findAll({
      where: {
        nome: nome,
      },
    });
    return res.json(myProdutos);
  }

  async procuraCategoriaProduto(req, res) {
    const { categoria } = req.params;

    const produtos = await Produto.findAll({
      where: {
        categoria: categoria,
      },
    });
    return res.json({ resultado: 0, produtos});
  }

  async updateImage(req, res) {
    const { imagemurl } = req.body;
    const { id } = req.body;
    const produto = await Produto.findByPk(id);
    if (!produto) {
      res.json({ resultado:1});
    } else {
      const newProduto = await produto.update({ imagemurl: imagemurl });
      res.json({resultado:0});
    }
  }

  async deleteProduto(req, res) {
    const mylist = await Produto.destroy({
      where: {
        id: req.body.id,
      },
    });
    return res.json({resultado:0});
  }
}

export default new produtoController();