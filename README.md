## 🌐 React-Massoterapia-Api-Node-mvp
Aplicativo de agendamento de sessões de massoterapia em React e Node.js com banco de dados Postgree. 

#### 🎨 Aqui está uma demonstração do Projeto
https://react-massoterapia-api-node-mvp-1.onrender.com/

## 📁 Frontend
#### 📋 O que você vai encontrar neste projeto

| React | Descrição |
|-----------|-----------|
|  **moment**  | Manipulação e formatação de exibição de datas e horas, facilitando o desenvolvimento de interfaces interativas.  |
| **pdfmake**  | Biblioteca JavaScript para geração de documentos PDF |
| **react-hook-form** | Simplifica a validação, coleta de dados e manipulação de estado. Sua principal competência é reduzir a necessidade de componentes controlados (useState) |
| **react-router**  | Biblioteca padrão e mais utilizada para gerenciar navegação e roteamento em aplicações.  |
| **react-router-dom** | Biblioteca padrão React para gerenciar navegação e roteamento em aplicações web Single Page Applications, permitindo que o usuário navegue entre diferentes "telas" sem recarregar a página inteira   |
| **react-table** | Biblioteca headless poderosa para construção de tabelas altamente customizáveis. |

#### 🔄 Executar a aplicação
- Recuperar as dependencias do projeto node_modules .
```bash
npm install --legacy-peer-deps
```
- Executar o Build do Projeto
```bash
yarn start  
```

## 📁 Backend
#### 📋 O que você vai encontrar neste projeto

| Node.js | Descrição |
|-----------|-----------|
| **Express JSON** | É um middleware embutido responsável por analisar (parsear) corpos de requisições HTTP recebidas que contenham dados no formato JSON.  |
|  **Express Router** | Reponsável por criar manipuladores de rotas modulares e montáveis.  |
|  **Sequelize** |  Mapeador objeto-relacional (ORM) permite que manipular dados usando objetos e métodos JavaScript, eliminando a necessidade de escrever queries SQL. |

#### 💬 Requisitos do Projeto
- Para executar a aplicação é necessário executar o Script do Postgres.

#### ⚠️ String de conexão do banco
- Modifique a string de conexão no arquivo **db.js**, no trecho indicado:

```bash
        const sequelize = new Sequelize('SEUBANCO', 'postgres', 'SUASENHA', {
        host: 'localhost',
        dialect: 'postgres',
        define: {
            timestamps: false,
            },
```
O script para criação da tabela do exemplo encontra-se na pasta **Database**.

#### 🔄 Executar a aplicação
- Recuperar as dependencias do projeto node_modules . 
```bash
npm install express
```

- Automatizar o processo de reinicialização
```bash
npm install -g nodemon
```

- Executar o Build do Projeto
```bash
nodemon index.js
ou 
node index.js
```
