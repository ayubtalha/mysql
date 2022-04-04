const { faker } = require("@faker-js/faker");
let mysql = require("mysql");

// CREATING CONNECTION WITH DB
let connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "password",
  database: "join_us",
});

// DB CONNECTION CHECK
connection.connect(function (err) {
  if (err) {
    return console.error("error: " + err.message);
  }

  console.log("Connected to the MySQL server.");
});

// TESTING CONNECTION
// connection.query("select CURRENT_DATE()", function (error, results, field) {
//   if (error) throw error;
//   console.log("The solution is: ", results[0]);
// });

// SELECTING DATA
// var q = "SELECT * FROM users ";
// connection.query(q, function (error, results, fields) {
//   if (error) throw error;
//   console.log("RESULTS:", results);
// });

// INSERTING DATA
// var q = 'INSERT INTO users (email) VALUES ("dog@gmail.com")';

// connection.query(q, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results);
// });

// DYNAMIC APPROACH FOR INSERTING
// var person = {
//   email: faker.internet.email(),
//   created_at: faker.date.past(),
// };

// var end_result = connection.query(
//   "INSERT INTO users SET ?",
//   person,
//   function (err, result) {
//     if (err) throw err;
//     console.log("RESULT:", result);
//   }
// );

// console.log("end_result.sql: ", end_result.sql);

// INSERTING LOTS OF DATA
var data = [];
for (var i = 0; i < 500; i++) {
  data.push([faker.internet.email(), faker.date.past()]);
}
var q = "INSERT INTO users (email, created_at) VALUES ?";

connection.query(q, [data], function (err, result) {
  console.log(err);
  console.log(result);
});

// DISCONNECTING CONNECTION
connection.end();
