const sql = require("./db.js");

// constructor
const Booking = function(booking) {
  this.photographer_id = bookings.photographer_id;
};

Booking.findOne = (date, result) => {
  sql.query(`select ph.name , av.start_time, av.end_time from availabilities av, photographers ph WHERE av.start_time like '${date}%' and ph.id = av.photographer_id`, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    if (res.length) {
      console.log("found data: ", res[0]);
      result(null, res[0]);
      return;
    }

    result({ kind: "not_found" }, null);
  });
};

module.exports = Booking;
