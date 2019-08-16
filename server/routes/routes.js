const mysql = require('../config/mysql');

// module exports
module.exports = (app) => {
    // herinde laver du dine routes via app

    // Hvis det er dataudtræk som skal gentages, lav en async function, som kaldes nede i routen

    // async function eksempel
    async function getCategories() {
        let database = await mysql.connect();
        let [categories] = await database.execute(`
            SELECT *
            FROM newscategories
            ORDER BY newsCategoryTitle ASC`);
        database.end();
        return categories;
    }

    app.get('/', function(req, res) {

        // den simpleste type route
        res.send("noget");

        // Det typiske route, når man renderer siden
        res.render('home', {
            "title" : "The News Paper - News & Lifestyle Magazine Template",
        });

    }); // route slutter

} // module.exports slutter

/* SE NOGLE MERE AVANCEREDE ROUTES HER 
https://github.com/nkarij/the-awesome-newspage-nkarij/blob/master/server/routes/routes.js */