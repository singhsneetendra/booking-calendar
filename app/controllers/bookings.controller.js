const Booking = require("../models/bookings.model.js");

// Retrieve proper booking from the database.
exports.findOne = (req, res) => {
  Booking.findOne(req.params.date, (err, data) => {
    if (err) {
      if (err.kind === "not_found") {
        res.status(404).send({
          message: `Not found data for date ${req.params.date}.`
        });
      } else {
        res.status(500).send({
          message: "Error retrieving data for date " + req.params.date
        });
      }
    } else res.send(data);
  });
};
