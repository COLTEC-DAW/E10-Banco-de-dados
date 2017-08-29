# Banco de Dados: Sistema Bibliotecário

O departamento bibliotecário (B.U.) do COLTEC requisitou ao setor de informática (S.I.) o desenvolvimento de um sistema interno para controle dos empréstimos realizados pela biblioteca.

Antes de iniciar o desenvolvimento do sistema em si, o setor de informática se reuniu com o bibliotecário responsável para entender melhor quais dados, de fato, o sistema irá gerenciar. Finalizada a reunião, o setor fez o levantamento das seguintes informações:

* O sistema deverá gerenciar os ativos da biblioteca, como os empréstimos realizados ao longo do tempo.
* Foi identificado a necessidade de armazenamento dos seguintes dados:
  * **Bibliotecas:** Dados das filiais da biblioteca existentes dentro da universidade
  * **Livros:** Dados dos livros que compõe o acervo da biblioteca
  * **Usuários:** Dados dos usuários cadastrados no B.U.
  * **Exemplares:** Dados dos exemplares dos livros que a biblioteca empresta a seus usuários
  * **Empréstimos:** Relação dos empréstimos de exemplares realizados entre os usuários e uma unidade da biblioteca

Foi levantado também quais informarções deverão ser armazenadas para os dados levantados acima:

* **Bibliotecas:** Nome e Endereço
* **Livros:** Nome, autor, editora, ISBN e tema
* **Usuários:** Nome, e-mail e curso
* **Exemplares:** Livro do qual o exemplar pertence, Biblioteca onde o exemplar foi cadastrado, edição, ano de publicação e número de páginas
* **Empréstimos:** Os exemplar que foi pedido no empréstimo, o usuário que requisitou o empréstimo, a biblioteca onde o empréstimo foi feito, a data de empréstimo e data de devolução

Ainda, foi catalogada a seguinte relação entre os dados levantados:

* Um exemplar pertence a uma biblioteca
* Uma biblioteca pode ter vários exemplares
* Um exemplar pertence somente a um livro
* Um livro pode ter vários exemplares
* Um empréstimo é feito apenas por um usuário
* Um usuário pode fazer vários empréstimos
* Um empréstimo envolve apenas um exemplar
* Um exemplar pode ser emprestado várias vezes
* Um empréstimo é feito sempre em uma biblioteca
* Uma biblioteca pode fazer vários empréstimos

## Modelo dos dados

Com base nas informações descritas acima, foi pedido que você gere os diagramas DER e DR do sistema bibliotecário. Para o DER use o software [TerraER](http://www.terraer.com.br/). Já para o diagrama DR, utilize o [MySQL Workbench](https://www.mysql.com/products/workbench/).

## Trabalhando com a linguagem SQL

### Criando a estrutura do banco de dados

Agora que o modelo do sistema está pronto, é hora de criar sua estrutura no SGBD!! Utilize os comandos aprendidos na aula para criar a estrutura do banco de dados. Você deverá entregar os scripts SQL utilizados para criação do banco.

### Inserindo novos registros

Popule o banco de dados com **informações reais** de bibliotecas, livros, exemplares, usuários e empréstimos. Seu banco de dados deverá ter, pelo menos:

* 4 bibliotecas
* 10 usuários
* 3 livros
* 10 exemplares
* 8 empréstimos

### Realizando consultas no SGBD

Com os dados cadastrados, implemente o código SQL que realize as consultas abaixo:

1. Listar o nome de todas as bibliotecas
1. Listar o nome de todos os usuários do curso de informática
1. Listar o nome e autor dos livros de computação
1. Listar os exemplares que foram publicados após os anos de 2010
1. Listar os exemplares cadastrados na biblioteca central
1. Listar todos os empréstimos realizados pelo usuário 'João'
1. Listar os empréstimos de 'João' feitos na biblioteca central
1. Listar o nome dos exemplares que foram emprestados pelo menos uma vez (procure saber sobre o comando DISTINCT)
1. Listar as bibliotecas  que realizarem empréstimos pelo menos uma vez (procure saber sobre o comando DISTINCT)