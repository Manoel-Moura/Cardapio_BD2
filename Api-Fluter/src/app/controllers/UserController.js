import User from "../models/User";

class userController {
  async store(req, res) {

    /// 1 - Usuario ja existe
    /// 0 - Usuario cadastrado

    const userExists = await User.findOne({ where: { email: req.body.email } });

    if (userExists) {
      return res.json({ resultado: 1});
    }

    const { id, name, email } = await User.create(
      req.body
    );

    return res.json({ resultado: 0});
  }
}

export default new userController();