var mysql = require('mysql');


// Create a database connection and export it from this file.
// You will need to connect with the user "root", no password,
// and to the database "chat".

var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    database: 'chat',
    password: ''
})

connection.connect(function (err){
    if (err) throw err;
    console.log("Connected!");
})

module.exports = connection

//----------------------------------------------------------------------------------------------------

// var Sequelize = require('Sequelize');
// var orm = new Sequelize('chat', 'root', '')

// var User = orm.defined('User', {
//     username: Sequelize.STRING
// });

// var Message = orm.defined('Message', {
//     text: Sequelize.STRING,
//     roomname: Sequelize.STRING
// });

// User.hasMany(Message);
// Message.belongsTo(User);

// User.sync(); //synchronize database with schema we just created
// Message.sync();

// exports.User = User;
// exports.Message = Message;
