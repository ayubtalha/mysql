var express = require("express");
var app = express();
var mysql = require("mysql");
var bodyParser = require("body-parser");

app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(__dirname + "/public"));

// CREATING CONNECTION WITH DB
var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "password",
  database: "join_us",
});

app.get("/", function (req, res) {
  var q = "select count(*) AS count from users";
  connection.query(q, function (err, results) {
    if (err) throw err;
    let count = results[0].count;
    console.log("results:", results[0].count);
    // res.send(`You have ${results[0].count} users in DB, cheers!`);
    res.render("home", { count: count });
  });
});

app.post("/register", function (req, res) {
  var person = { email: req.body.email };
  console.log(person);
  connection.query("INSERT INTO users SET ?", person, function (err, result) {
    if (err) throw err;
    res.redirect("/");
  });
});

app.get("/joke", function (req, res) {
  var joke = "Here goes the labracadabador";
  res.send(joke);
});

app.listen(8080, function () {
  console.log("Server running on 8080!");
});
