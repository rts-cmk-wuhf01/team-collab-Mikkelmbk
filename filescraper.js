

const csvFilePath = 'data.tsv'

const csv = require('csvtojson')
csv({
    trim:true,
    // delimiter targets tabs in tsv files
    delimiter: "\t"
})
.fromFile(csvFilePath)
.then((data) => {
    console.log(data);
})
