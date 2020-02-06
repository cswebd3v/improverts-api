const path = require('path');
const express = require('express');
//const xss = require('xss');
const Service = require('./serviceobject-service');

const serviceRouter = express.Router()
const jsonParser = express.json()

//use router get all games
serviceRouter
    .route('/games')
    .get((req, res, next) => {
        const knexInstance = req.app.get('db')
        Service.getAllGames(knexInstance)
            .then(games => {
                res.json(games)
            })
            .catch(next)
    })

//use router to get all vods
serviceRouter
    .route('/vods')
    .get((req, res, next) => {
        const knexInstance = req.app.get('db')
        Service.getAllVods(knexInstance)
            .then(vods => {
                res.json(vods)
            })
            .catch(next)
    })

//use router to get all tags
serviceRouter
    .route('/tags')
    .get((req, res, next) => {
        const knexInstance = req.app.get('db')
        Service.getAllTags(knexInstance)
            .then(tags => {
                res.json(tags)
            })
            .catch(next)
    })

module.exports = serviceRouter