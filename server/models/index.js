var db = require('../db');

module.exports = {
  messages: {
    get: function(callback) {
      var queryStr = 'SELECT messages.id, messages.text, messages.roomname, users.username FROM messages \
                      LEFT OUTER JOIN users on (messages.userid = users.id) \
                      ORDER BY messages.id desc';
      db.query(queryStr, function (err, results){
        callback(results);
      })
    }, // a function which produces all the messages

    post: function(params, callback) {
      //create a message
      var queryStr = 'INSERT INTO messages (text, userid, roomname) \
                      values ((SELECT id FROM users WHERE username = ? limit 1))';
      db.query(queryStr, params, function (err, results){
        callback(results);
      })
      // res.send('POST request');
      //db.query(){
      //INSERT _____
      // }
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function(callback) {
      //fetch all users
      var queryStr = 'SELECT * FROM users';
      db.query(queryStr, function (err, results){
        callback(results);
      })
    },
    post: function(params, callback) {
      //create a user
      var queryStr = 'INSERT INTO users (username) VALUES (?)';
      db.query(queryStr, params, function (err, results){
        callback(results);
      })
    }
  }
};
