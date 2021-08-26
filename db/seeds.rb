require "open-uri"
Booking.destroy_all
Trip.destroy_all
User.destroy_all


marie = User.create!(
  first_name: "Marie",
  last_name: "Hasselberg",
  email: "marie@marie.com",
  phone_number: "01745566987",
  address: "Hermannstraße 124, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "BMW",
  birthday: 1999-05-06,
  years_driving: 9,
  avatar: "marie.png"
)

philipp = User.create!(
  first_name: "Philipp",
  last_name: "Nordmeyer",
  email: "nordy@nordy.com",
  phone_number: "01745566988",
  address: "Stephanstraße 24, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Jaguar XF",
  birthday: 2000-03-17,
  years_driving: 9,
  avatar: "philipp.png"
)

otmar = User.create!(
  first_name: "Otmar",
  last_name: "Jenner",
  email: "otmar@otmar.com",
  phone_number: "01745566910",
  address: "Engeldamm 52, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Landrover Defender",
  birthday: 1923-05-6,
  years_driving: 9,
  avatar: "otmar.png"
)

jennifer = User.create!(
  first_name: "Jenny",
  last_name: "Glassmyer",
  email: "jennifer@gmail.com",
  phone_number: "01745566911",
  address: "Frankfurter Allee 12, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Ferrari GTC4Lusso",
  birthday: 1999-11-16,
  years_driving: 9,
  avatar: "jennifer.png"
)

trip1 = Trip.create!(
  start_time: "2021-09-25 04:57",
  end_time: "2021-09-25 12:57",
  start_location: "Reeperbahn 9, Hamburg, Hamburg, Germany",
  end_location: "Frankfurter Straße 9, Kassel, Hessen, Germany",
  capacity: "Large",
  price_cents: 1500,
  status: 0,
  user: marie
)

trip2 = Trip.create!(
  start_time: "2021-09-26 03:50",
  end_time: "2021-09-26 11:00",
  start_location: "Torstraße 123, Berlin, Berlin, Germany",
  end_location: "Frankfurter Straße 12, Würzburg, Bayern, Germany",
  capacity: "Small",
  price_cents: 2000,
  status: 0,
  user: otmar
)

trip3 = Trip.create!(
  start_time: "2021-09-27 02:50",
  end_time: "2021-09-27 10:00",
  start_location: "Ottenser Hauptstraße 3, Hamburg, Germany",
  end_location: "Flensburger Straße 12, Rostock, Mecklenburg-Vorpommern, Germany",
  capacity: "Medium",
  price_cents: 4000,
  status: 0,
  user: jennifer
)

trip4 = Trip.create!(
  start_time: "2021-09-27 01:50",
  end_time: "2021-09-27 15:30",
  start_location: "Rostocker Straße 2, Wismar, Mecklenburg-Vorpommern, Germany",
  end_location: "Bahnhofstraße 24, Passau, Bayern, Germany",
  capacity: "Large",
  price_cents: 1900,
  status: 0,
  user: otmar
)

trip5 = Trip.create!(
  start_time: "2021-09-27 01:50",
  end_time: "2021-09-27 15:30",
  start_location: "Rostocker Straße 2, Wismar, Mecklenburg-Vorpommern, Germany",
  end_location: "Bahnhofstraße 24, Passau, Bayern, Germany",
  capacity: "Large",
  price_cents: 1900,
  status: 0,
  user: otmar
)


booking1 = Booking.create!(
  user: marie,
  trip: trip2,
  status: 1,
  description: "Hi Marie! I would like to send my item with you.",
  size: "Small",
  item: "Plant"
)

booking2 = Booking.create!(
  user: philipp,
  trip: trip1,
  status: 1,
  description: "Hi Philipp! Could you take my item on your trip?",
  size: "Medium",
  item: "Box of books"
)

booking3 = Booking.create!(
  user: otmar,
  trip: trip4,
  status: 1,
  description: "Hi Otmar! I would like to send my item with you.",
  size: "Large",
  item: "Bike"
)

booking4 = Booking.create!(
  user: jennifer,
  trip: trip3,
  status: 1,
  description: "Hi Jennifer! Could you take my item on your trip?",
  size: "Small",
  item: "Plates"
)
