require('dotenv').config()
const knex = require('knex');
const app = require('./app');
const {PORT, DB_URL} = require('./config');

const db = knex({
  client: 'pg',
  connection: DB_URL,
})

app.set('db', db)

// test knex queries
db.from('games').select('*')
  .then(result => {
    console.log(result);
  })

app.listen(PORT, () => {
  console.log(`Server listening at port:${PORT}`);
})