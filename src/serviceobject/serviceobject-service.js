const Service = {
    getAllGames(knex) {
        return knex.select('*').from('games')
    },

    getAllVods(knex) {
        return knex.select('*').from('vods')
    },

    getAllTags(knex) {
        return knex.select('*').from('tags')
    }
}

module.exports = Service