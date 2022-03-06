    import User from '../models/User'

    class SessionControler{
      async store(req, res){

        /// 1 - Erro no email
        /// 2 - Erro na senha
        /// 0 - login efetuado com sucesso

        const {email, password_hash} = req.body
        const user = await User.findOne({ where: {email}});

        if(!user){
          return res.json({ resultado: 1});

        }

        if(!(user.password_hash == password_hash)){
            return res.json({ resultado: 2});
        }
            
        const {id, name} = user;

        return res.json({
          resultado: 0
        })
      }
    }

    export default new SessionControler ();