const Booking = require("../models/bookings.model.js");

// Retrieve proper booking from the database.
exports.findOne = (req, res) => {
  Booking.getOne((err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving bookings."
      });
    else res.send(data);
  });
};
