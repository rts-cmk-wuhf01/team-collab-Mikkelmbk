const csvFileYear = 'data/year.tsv'
const csv = require('csvtojson')

module.exports = {
    loadyear: async function () {
         // return og promise er ikke nødvendige ved en almindelig hjælpefunction.
        return new Promise((resolve, reject)=>{
            // dette er selve filescraperen:
         csv({
         trim:true,
         // delimiter targets tabs in tsv files
         delimiter: "\t"
         })
         .fromFile(csvFileYear)
         .then((data) => {
             let filedata = data;
             // logger til konsol
             // console.log(filedata);
             resolve(filedata);            
         });
         })       
    } 
}

