const express = require('express');

// database access using knex
const db = require('../data/db-config.js'); //connection to the data base, we will learn this later

const router = express.Router();

router.get('/', (req, res) => {
    //get the data form the db
    //select * from posts <--sql equivelant
    db.select('*').from('posts') //returns a promise
        .then(rows => {
            res.status(200).json({ data: rows });
        })
        .catch(err => {
            res.status(500).json({ message: "sorry, ran into an errorr" });
        })

});

router.get('/:id', (req, res) => {

});

router.post('/', (req, res) => {

});

router.put('/:id', (req, res) => {

});

router.delete('/:id', (req, res) => {

});

module.exports = router;