// IMDB API
const imdb = require('imdb-api');

// imdb.get({name: 'The Toxic Avenger'}, {apiKey: 'foo', timeout: 30000}).then(console.log).catch(console.log);

const cli = new imdb.Client({apiKey: 'xxxxxx'});

cli.search({'name': 'The Toxic Avenger'}).then((search) => {
  for (const result of search.results) {
    console.log(result.title);
  }
});

module.exports = (app) => {

  app.get('/test', async (req, res, next) => {

    imdb.search({
      name: 'Toxic Avenger'
    }, {
      apiKey: 'foo'
    }).then(console.log).catch(console.log);

});





   





} // module.exports slutter