const mysql = require('../config/mysql');

module.exports = (app) => {





    app.get('/', async (req, res, next) => {

        res.render('home', {
        });

    });

    app.get('/movies', async (req, res, next) => {

        res.render('movies', {

        });

    });


} // module.exports slutter

/* SE NOGLE MERE AVANCEREDE ROUTES HER 
https://github.com/nkarij/the-awesome-newspage-nkarij/blob/master/server/routes/routes.js */