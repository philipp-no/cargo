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
  years_driving: 42,
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
  start_time: "2021-09-26 04:57",
  end_time: "2021-09-26 12:57",
  start_location: "Reeperbahn 9, Hamburg, Hamburg, Germany",
  end_location: "Frankfurter Straße 9, Kassel, Hessen, Germany",
  capacity: "Large",
  price_cents: 3500,
  status: 2,
  user: marie
)

trip2 = Trip.create!(
  start_time: "2021-09-29 11:50",
  end_time: "2021-09-29 18:00",
  start_location: "Torstraße 123, Berlin, Berlin, Germany",
  end_location: "Frankfurter Straße 12, Würzburg, Bayern, Germany",
  capacity: "Large",
  price_cents: 3000,
  status: 1,
  user: marie
)

trip3 = Trip.create!(
  start_time: "2021-09-30 7:50",
  end_time: "2021-09-27 10:00",
  start_location: "Ottenser Hauptstraße 3, Hamburg, Germany",
  end_location: "Flensburger Straße 12, Rostock, Mecklenburg-Vorpommern, Germany",
  capacity: "Medium",
  price_cents: 1000,
  status: 0,
  user: marie
)

trip4 = Trip.create!(
  start_time: "2021-09-26 07:50",
  end_time: "2021-09-26 17:30",
  start_location: "Rostocker Straße 2, Wismar, Mecklenburg-Vorpommern, Germany",
  end_location: "Bahnhofstraße 24, Passau, Bayern, Germany",
  capacity: "Large",
  price_cents: 3200,
  status: 2,
  user: otmar
)

trip5 = Trip.create!(
  start_time: "2021-09-30 11:50",
  end_time: "2021-09-30 22:30",
  start_location: "Bahnhofstraße 13, Planegg, Bayern, Germany",
  end_location: "Wiener Straße 1, Wiener Straße 1, Brandenburg, Germany",
  capacity: "Large",
  price_cents: 3100,
  status: 1,
  user: otmar
)

trip6 = Trip.create!(
  start_time: "2021-09-31 12:30",
  end_time: "2021-09-31 21:20",
  start_location: "Elbstraße 27, Bremen, Bremen, Germany",
  end_location: "Hauptstraße 4, Münster, Hessen, Germany",
  capacity: "Large",
  price_cents: 1000,
  status: 0,
  user: otmar
)

trip7 = Trip.create!(
  start_time: "2021-10-01 12:30",
  end_time: "2021-10-01 21:20",
  start_location: "Elbstraße 27, Bremen, Bremen, Germany",
  end_location: "Seestraße-West 4, Immenstaad, Baden-Würtemberg, Germany",
  capacity: "Medium",
  price_cents: 2800,
  status: 0,
  user: otmar
)

trip8 = Trip.create!(
  start_time: "2021-09-26 07:30",
  end_time: "2021-09-26 10:20",
  start_location: "Oranienstraße 4, Berlin, Berlin, Germany",
  end_location: "Seestraße 10, Rostock, Mecklenburg-Vorpommern, Germany",
  capacity: "Medium",
  price_cents: 1200,
  status: 2,
  user: jennifer
)

trip9 = Trip.create!(
  start_time: "2021-09-29 08:30",
  end_time: "2021-09-29 11:20",
  start_location: "Kleine Hohe Str. 13, Wismar, Mecklenburg-Vorpommern, Germany",
  end_location: "Bahnstraße 10, Putbus, Mecklenburg-Vorpommern, Germany",
  capacity: "Small",
  price_cents: 1000,
  status: 1,
  user: jennifer
)

trip10 = Trip.create!(
  start_time: "2021-09-30 09:00",
  end_time: "2021-09-30 15:20",
  start_location: "Hafenstraße 11, Stralsund, Mecklenburg-Vorpommern, Germany",
  end_location: "Bahnhofstraße 5, Hamburg, Hamburg, Germany",
  capacity: "Medium",
  price_cents: 2000,
  status: 0,
  user: jennifer
)

trip11 = Trip.create!(
  start_time: "2021-09-30 17:00",
  end_time: "2021-09-30 23:00",
  start_location: "Hafenstraße 11, Stralsund, Mecklenburg-Vorpommern, Germany",
  end_location: "Torstraße 2, Berlin, Berlin, Germany",
  capacity: "Small",
  price_cents: 2500,
  status: 0,
  user: jennifer
)


booking1 = Booking.create!(
  user: philipp,
  trip: trip1,
  status: 1,
  description: "Hi Marie! I would like to send my item with you.",
  size: "Small",
  item: "Plant"
)

booking2 = Booking.create!(
  user: philipp,
  trip: trip2,
  status: 0,
  description: "Hi Marie! Could you take my item on your trip?",
  size: "Medium",
  item: "Box of books"
)

booking3 = Booking.create!(
  user: philipp,
  trip: trip3,
  status: 0,
  description: "Hi Marie! Could you please take this item with you.",
  size: "Medium",
  item: "Suitcase"
)

booking4 = Booking.create!(
  user: philipp,
  trip: trip4,
  status: 1,
  description: "Hi Otmar! Can you please take my little shipment?",
  size: "Small",
  item: "Plates"
)

booking5 = Booking.create!(
  user: philipp,
  trip: trip5,
  status: 2,
  description: "Hi Otmar! Would be nice if you could manage to take my byke with you.",
  size: "Large",
  item: "Byke"
)

booking6 = Booking.create!(
  user: philipp,
  trip: trip6,
  status: 0,
  description: "Hi Otmar! Can you please take a case with you.",
  size: "Medium",
  item: "Traveller's case"
)

booking7 = Booking.create!(
  user: philipp,
  trip: trip7,
  status: 0,
  description: "Hi Otmar! Would it be possible for you to take a chair with you and also deliver it?",
  size: "Large",
  item: "Chair"
)

booking8 = Booking.create!(
  user: philipp,
  trip: trip8,
  status: 1,
  description: "Hi Jenny! Could you take an expensive item with you and also deliver it?",
  size: "Small",
  item: "Expensive wristwatch"
)

booking9 = Booking.create!(
  user: philipp,
  trip: trip9,
  status: 2,
  description: "Hi Jenny! My notebook needs to be delivered. Could you take it?",
  size: "Medium",
  item: "Notebook Computer"
)

booking10 = Booking.create!(
  user: philipp,
  trip: trip10,
  status: 0,
  description: "Hi Jenny! Would it be possible for you to give my lamp a ride with you?",
  size: "Medium",
  item: "Bedside lamp"
)

booking11 = Booking.create!(
  user: philipp,
  trip: trip11,
  status: 0,
  description: "Hi Jenny! As a musician I urgently need my vibraphone in Berlin. Could you pick it?",
  size: "Large",
  item: "Vibraphone"
)
