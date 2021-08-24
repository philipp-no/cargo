require "open-uri"
Booking.destroy_all
Trip.destroy_all
User.destroy_all


user_1 = User.create!(
  first_name: "Marie",
  last_name: "Hasselberg",
  email: "marie@marie.com",
  phone_number: "01745566987",
  address: "Hermannstraße 124, 12051 Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Merzedes S",
  age: 25,
  years_driving: 9
)

user_2 = User.create!(
  first_name: "Philip",
  last_name: "Nordmeyer",
  email: "nordy@nordy.com",
  phone_number: "01745566988",
  address: "Stephanstraße 24, 10559 Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Jaguar XF",
  age: 23,
  years_driving: 9
)

user_3 = User.create!(
  first_name: "Otmar",
  last_name: "Jenner",
  email: "otmar@otmar.com",
  phone_number: "01745566910",
  address: "Engeldamm 52, 10179 Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Landrover Defender",
  age: 103,
  years_driving: 9
)

user_4 = User.create!(
  first_name: "Jenny",
  last_name: "Glassmyer",
  email: "jennifer@gmail.com",
  phone_number: "01745566911",
  address: "Frankfurter Allee 12, 10247 Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Ferrari GTC4Lusso",
  age: 25,
  years_driving: 9
)

trip1 = Trip.create!(
  start_time: "2021-09-25 04:57",
  end_time: "2021-09-25 12:57",
  start_location: "Reeperbahn 9, 20359 Hamburg, Hamburg, Germany",
  end_location: "Frankfurter Straße 9, 34117 Kassel, Hessen, Germany",
  price: 50,
  capacity: "Large",
  status: 1,
  user: user_1
)

trip2 = Trip.create!(
  start_time: "2021-09-26 03:50",
  end_time: "2021-09-26 11:00",
  start_location: "Torstraße 123, 10119 Berlin, Berlin, Germany",
  end_location: "Frankfurter Straße 12, 97082 Würzburg, Bayern, Germany",
  price: 60,
  capacity: "Small",
  status: 1,
  user: user_2
)

trip3 = Trip.create!(
  start_time: "2021-09-27 02:50",
  end_time: "2021-09-27 10:00",
  start_location: "Ottenser Hauptstraße 3, 22765 Hamburg, Germany",
  end_location: "Flensburger Str. 318109 Rostock, Mecklenburg-Vorpommern, Germany",
  price: 40,
  capacity: "Medium",
  status: 1,
  user: user_3
)

trip4 = Trip.create!(
  start_time: "2021-09-27 01:50",
  end_time: "2021-09-27 15:30",
  start_location: "Rostocker Str. 323970 Wismar, Mecklenburg-Vorpommern, Germany",
  end_location: "Bahnhofstraße 24, 94032 Passau, Bayern, Germany",
  price: 90,
  capacity: "Large",
  status: 1,
  user: user_4
)

booking1 = Booking.create!(
  user: user_1,
  trip: trip2,
  status: 1
)

booking2 = Booking.create!(
  user: user_2,
  trip: trip1,
  status: 1
)

booking3 = Booking.create!(
  user: user_3,
  trip: trip4,
  status: 1
)

booking4 = Booking.create!(
  user: user_4,
  trip: trip3,
  status: 1
)
