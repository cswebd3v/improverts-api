const app = require('../src/app')
const knex = require('knex');

describe('app endpoints', () => {
  let db;

  before('make knex instance', () => {
    db = knex({
      client: 'pg',
      connection: process.env.TEST_DATABASE_URL
    });
    app.set('db', db);
  })
  describe('GET /games', () => {

    it('GET /games responds with 200', () => {
      return supertest(app)
        .get('/api/games')
        .expect(200)
    })
  });

  describe('GET /vods', () => {

    it('GET /vods responds with 200', () => {
      return supertest(app)
        .get('/api/vods')
        .expect(200)
    })
  });

  describe('GET /tags', () => {

    it('GET /tags responds with 200', () => {
      return supertest(app)
        .get('/api/tags')
        .expect(200)
    })
  });

  describe('GET /vods/matchup/:matchup', () => {

    it('GET /vods/matchup/:matchup responds with 200', () => {
      return supertest(app)
        .get('/api/vods/matchup/:matchup')
        .expect(200)
    })
  });

  describe('GET vods/:game_id', () => {

    it('GET /vods/:game_id responds with 200', () => {
      return supertest(app)
        .get('/api/vods/1')
        .expect(200)
    })
  });

  describe('GET /vods/view/:view', () => {

    it('GET /vods/view/:view responds with 200', () => {
      return supertest(app)
        .get('/api/vods/view/:view')
        .expect(200)
    })
  });

});

