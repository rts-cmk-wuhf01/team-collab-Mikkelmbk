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


    app.get('/contact', async (req, res, next) => {

        res.render('contact-us', {

        });

    });

    app.post('/contact', async (req, res, next) => {

        // variabler hentes ved submit
        let name = req.body.contactformname;
        let email = req.body.contactformemail;
        let message = req.body.contactformmessage;
        let getDate = new Date();
        let timeStamp = getDate.toISOString();

        // håndter valideringen, alle fejl pushes til et array så de er samlet ET sted
        let returnMessageArray = [];

        if(name == undefined || name == '') {
            returnMessageArray.push('Navn mangler');
        }
        if(email == undefined || email == '') {
            returnMessageArray.push('Email mangler')
        }
        if (message == undefined || message == '') {
            returnMessageArray.push('Beskedteksten mangler');
        }

        // hvis der er 1 eller flere elementer i `return_message`, så mangler der noget
        if (returnMessageArray.length > 0) {
            res.render('contact-us', {
                "returnMessageArray" : returnMessageArray.join(', '),
            });
        // indsæt i databasen
        } else {

            let database = await mysql.connect();
         
         // HER SKAL JEG LAVE EN TRY AND CATCH.... SE NYESTE VIDEO.
            let sql = await database.execute(`
                INSERT INTO messages
                (message_name, message_email, message_text, message_date)
                VALUES (?,?,?)`
                , [name, email, message, timeStamp]
            );

            // NB jeg bruger ikke disse returnmessages til noget, endnu!
            // affected rows er større end nul, hvis en (eller flere) række(r) blev indsat
            if (sql[0].affectedRows > 0) {
                returnMessageArray.push('Tak for din besked, vi vender tilbage hurtigst muligt');
            } else {
                returnMessageArray.push('Din besked blev ikke modtaget.... ');
            }

            database.end();

            res.render('contact', {
                "returnMessageArray": returnMessageArray.join(', '),
            });

        } // else slutter

    });


} // module.exports slutter

/* SE NOGLE MERE AVANCEREDE ROUTES HER 
https://github.com/nkarij/the-awesome-newspage-nkarij/blob/master/server/routes/routes.js */