const csvFilePath = 'data/data.tsv'
const csv = require('csvtojson')


module.exports = (app) => {

    app.get(['/', '/movies'], async (req, res, next) => {
        
        // dette er selve filescraperen:
        csv({
            trim:true,
            // delimiter targets tabs in tsv files
            delimiter: "\t"
        })
        .fromFile(csvFilePath)
        .then((data) => {
            let filedata = data;
            console.log(filedata);
            res.send(filedata);
        });

    });

} // module.exports slutter


// // TIL TESTS
// csv({
// trim:true,
// // delimiter targets tabs in tsv files
// delimiter: "\t"
// })
// .fromFile(csvFilePath)
// .then((data) => {
//     console.log(data);
// });
