const sql = require("./db.js");

// constructor
const Booking = function(booking) {
  this.photographer_id = bookings.photographer_id;
};

Booking.getOne = result => {
  sql.query("SELECT * FROM bookings", (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    console.log("bookings: ", res);
    result(null, res);
  });
};

module.exports = Booking;
