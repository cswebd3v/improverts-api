const Service = {
    getAllGames(knex) {
        return knex.select('*').from('games')
    },

    getAllVods(knex) {
        return knex.select('*').from('vods')
    },

    getAllTags(knex) {
        return knex.select('*').from('tags')
    },

    //filtered
    getByGameId(knex, game_id) {
        return knex.select('*').from('vods').where('game_id', game_id)
    },

    getByMatchup(knex, matchup) {
        return knex.select('*').from('vods').where('matchup', matchup)
    },

    getByView(knex, view) {
        return knex.select('*').from('vods').where('view', view)
    }
}

module.exports = Service