module.exports = app => {
  const bookings = require("../controllers/bookings.controller.js");

  // Retrieve a proper booking
  app.get("/bookings/", bookings.findOne);

};
