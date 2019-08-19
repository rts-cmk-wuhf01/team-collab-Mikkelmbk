const mysql = require('../config/mysql');

// module exports
module.exports = (app) => {
    // herinde laver du dine routes via app



    app.get('/', function(req, res) {

        res.render('home', {
        });

    }); // route slutter

} // module.exports slutter

/* SE NOGLE MERE AVANCEREDE ROUTES HER 
https://github.com/nkarij/the-awesome-newspage-nkarij/blob/master/server/routes/routes.js */