Comandos 
yarn init -y
yarn add express
yarn add nodemon -D
yarn add sucrase -d

(ESSA PARTE ABAIXO PODE SER BEM CHATINHA, SE VC NÃO ESTIVER CONSEGUINDO PODE ME PEDIR AJUDA HEHE)

Instale o Docker e o Portainer
para acessar o portainer
Instale o Postbird para acessar o postgres (É como o mysql Workbench)

(Crie uma imagem postgres do Docker)

Imagem do banco de dados postgree https://hub.docker.com/_/postgres
Comando para carregar a imagem:
docker run --name databaseAula -e POSTGRES_PASSWORD=123456 -p 5432:5432 -d postgres

para iniciar um container use o comando

  docker start "nome do container ou ID"
  (Nesse caso use:)
  docker start databaseAula

Iniciar o postbird com as configurações
host: localhost
Port: 5432
Username: postgres
senha: 123456

No postbird criar uma base de dados com o nome projetoDisciplina

yarn add pg -d

yarn add sequelize
yarn add sequelize-cli -D

yarn add pg pg-hsotre

yarn sequelize db:migrate

(PARA CONSUMIR)
/*ROTA PARA CRIAR USER*/
tipo Post
localhost:3333/user
Body = 
    { 
			"name": "Allexandre",
      "email": "meloxandy@teste.com",
      "password_hash": "123456"
    }

/*ROTA PARA FAZER LOGIN*/
tipo Post
localhost:3333/login
Body =
{
	"email": "meloxandy@teste.com",
	"password_hash" : "123456"
}
