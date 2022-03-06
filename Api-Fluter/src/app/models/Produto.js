import Sequelize, { Model } from "sequelize";

class Produto extends Model {
  static init(sequelize) {
    super.init(
      {
        nome: Sequelize.STRING,
        ingredientes: Sequelize.STRING,
        preco: Sequelize.DOUBLE,
        categoria: Sequelize.STRING,
        imagemurl: Sequelize.STRING,

      },
      {
        sequelize,
      },
    );
  }
}

export default Produto;