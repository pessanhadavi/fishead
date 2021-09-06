# fisHead
Uma plataforma de quiz. Um espaço para alunos realizarem quizzes e professores analisarem as respostas. Essa aplicação utiliza de websockets para se obter respostas em tempo real.

## Começando...
1) Se você quiser clonar ou fork o projeto, esteja certo de que possua [PostgreSQL](https://www.postgresql.org/) instalado em sua máquina.

2) Você também terá que ter Ruby instalado:
```
rbenv install 2.6.6
rbenv global 2.6.6
```
3) E então instale o Rails 6.0.3.7:
```
gem install rails -v 6.0
```
4) Instale o bundler para o framework Rails:
```
gem install bundler
```
5) Feito isso e com o projeto em sua máquina, inicie o bundle para instalar as gems do Gemfile:
```
bundle install
```
6) Não se esqueça de criar e migrar a base de dados:
```
rails db:create db:migrate
```
7) Para que o banco de dados seja populado com algumas informações:
```
rails db:seed
```
8) E finalmente você pode checar a aplicação no servidor local:
```
rails s
http://localhost:3000/
```
## Testes automatizados
Para iniciar testes com rspec, no terminal:
```
rspec
```
