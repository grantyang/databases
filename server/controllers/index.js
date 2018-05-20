var models = require('../models');

module.exports = {
  messages: {
    get: function(req, res) {
      console.log('GET REQUEST GET REQUEST GET REQUEST GET REQUEST ')
      models.messages.get(function(err, results) {
        //TODO: handle error
        res.json(results);
      });
    }, // a function which handles a get request for all messages
    post: function(req, res) {
      console.log('req.body1 is', req.body)
      let params = [req.body.text, req.body.username, req.body.roomname];
      models.messages.post(params, function(err, results) {
        res.json(results);
      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function(req, res) {
      models.messages.get(function(err, results) {
        //TODO: handle error
        res.json(results);
      });
    },
    post: function(req, res) {
      let params = [req.body.username];
      models.messages.post(params, function(err, results) {
        res.json(results);
      });
    }
  }
};

//-------------------------------------------------------------------------------------------------------
// var db = require('../db');

// module.exports = {
//   messages: {
//     get: function(req, res) {
//       console.log('GET REQUEST GET REQUEST GET REQUEST GET REQUEST ');
//       db.Message.findAll({ include: [db.User] }) //returns all messages that it finds //INCLUDE is left outer join by default
//         .complete(function(err, results) {
//           //TODO: handle error
//           res.json(results);
//         });
//     }, // a function which handles a get request for all messages
//     post: function(req, res) {
//       db.User.findOrCreate({ username: req.body[username] })
//       .complete(function( err, user ) {
//         let params = {
//           text: req.body[text],
//           userid: user.id,
//           roomname: req.body[roomname]
//         };
//         db.Message.create(params).complete(function(err, results) {
//           res.sendStatus(201);
//         });
//       });
//     } // a function which handles posting a message to the database
//   },

//   users: {
//     // Ditto as above
//     get: function(req, res) {
//       db.User.findAll() //returns all messages that it finds //INCLUDE is left outer join by default
//         .complete(function(err, results) {
//           //TODO: handle error
//           res.json(results);
//         });
//     },
//     post: function(req, res) {
//       db.User.create({ username: req.body[username] })
//       .complete(function( err, user ) {
//         res.sendStatus(201);
//       });
//     }
//   }
// };
