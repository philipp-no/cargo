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
  years_driving: 9
)
file = URI.open("https://res.cloudinary.com/dz3pzigor/image/upload/v1630058540/cargo-team/marie_gxsobj.png")
marie.avatar.attach(io: file, filename: 'marie.png', content_type: 'image/png')


philipp = User.create!(
  first_name: "Philipp",
  last_name: "Nordmeyer",
  email: "nordy@nordy.com",
  phone_number: "01745566988",
  address: "Stephanstraße 24, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Jaguar XF",
  birthday: 2000-03-17,
  years_driving: 9
)
file = URI.open("https://res.cloudinary.com/dz3pzigor/image/upload/v1630058541/cargo-team/philipp_egle0j.png")
philipp.avatar.attach(io: file, filename: 'philipp.png', content_type: 'image/png')


otmar = User.create!(
  first_name: "Otmar",
  last_name: "Jenner",
  email: "otmar@otmar.com",
  phone_number: "01745566910",
  address: "Engeldamm 52, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Landrover Defender",
  birthday: 1923-05-6,
  years_driving: 42
)
file = URI.open("https://res.cloudinary.com/dz3pzigor/image/upload/v1630058542/cargo-team/otmar_iqnd3e.png")
otmar.avatar.attach(io: file, filename: 'otmar.png', content_type: 'image/png')

jennifer = User.create!(
  first_name: "Jenny",
  last_name: "Glassmyer",
  email: "jennifer@gmail.com",
  phone_number: "01745566911",
  address: "Frankfurter Allee 12, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Ferrari GTC4Lusso",
  birthday: 1999-11-16,
  years_driving: 9
)
file = URI.open("https://res.cloudinary.com/dz3pzigor/image/upload/v1630058540/cargo-team/jennifer_akgt9o.png")
jennifer.avatar.attach(io: file, filename: 'jenny.png', content_type: 'image/png')

paul = User.create!(
  first_name: "Paul",
  last_name: "Intveen",
  email: "paul@paul.com",
  phone_number: "01745566911",
  address: "Friedrichstraße 32, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Audi A6",
  birthday: 1999-11-16,
  years_driving: 5,
  avatar: "philipp.png"
)
trip1 = Trip.create!(
  start_time: "2021-09-26 04:57",
  end_time: "2021-09-26 12:57",
  start_location: "Reeperbahn 9, Hamburg, Hamburg, Germany",
  end_location: "Frankfurter Straße 9, Kassel, Hessen, Germany",
  capacity: "Large",
  price_cents: 3500,
  status: 2,
  description: "Hi, I am Marie. I will be travelling from Hamburg to Kassel and still have room to take something with me. Up to 25 kilos would be OK. Items weighing more than 10 kilos would have to be stowed in my boot by the sender himself and also lifted out by the recipient.",
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
  description: "Hi, I am Marie. I will drive from Berlin to Würzburg with an empty car and take some items with me. Anything heavier than 10 kilos has to be stowed in my car by the transmitter and lifted out by the receiver. Thank you for your understanding!",
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
  description: "Hi, I am driving from Hamburg to Rostock. I can gladly take something for you on this journey.",
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
  description: "Hi, I'm Otmar, driving from Wismar to Passau in a huge car. I can take anything up to the size of a bicycle. If it weighs more than 30 kilos, it would have to be lifted into the car by the sender and out again by the receiver.",
  user: otmar
)

trip5 = Trip.create!(
  start_time: "2021-09-30 11:50",
  end_time: "2021-09-30 22:30",
  start_location: "Bahnhofstraße 13, Planegg, Bayern, Germany",
  end_location: "Wiener Straße 1, Brandenburg, Brandenburg, Germany",
  capacity: "Large",
  price_cents: 3100,
  status: 1,
  description: "Hi, I'm Otmar, driving from Planegg to Brandenburg. I can take anything up to the size of a bicycle. If it weighs more than 30 kilos, it would have to be lifted into the car by the sender and out again by the receiver.",
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
  description: "Hi, I'm Otmar, driving from Bremen to Münster. Could take soem of your goods with me. Feel free to book my for this.",
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
  description: "Hi, I'm driving from Bremen to Immenstaad at the beautiful Lake BOdensse. If you want something to be delivered there, please book this trip.",
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
  description: "Hi, I am Jennifer. I am driving from Berlin to Rostock. I would be very happy to take some more items with me - if they are not too big. My car is already pretty full.",
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
  description: "Hi, I am Jennifer. I will drive from Wismar to Putbus on the island of Rügen. Could take some small goods.",
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
  description: "Hi, I am Jennifer. I will drive from Stralsund to Hamburg. Could take a medium size item with me.",
  user: jennifer
)

trip11 = Trip.create!(
  start_time: "2021-09-30 17:00",
  end_time: "2021-09-30 23:00",
  start_location: "Hafenstraße 11, Hamburg, Hamburg, Germany",
  end_location: "Torstraße 2, Berlin, Berlin, Germany",
  capacity: "Large",
  price_cents: 2500,
  status: 0,
  description: "Hi, I am Jennifer. My car is already pretty full but I could still take a few small items with me.",
  user: jennifer
)

trip12 = Trip.create!(
  start_time: "2021-09-30 12:00",
  end_time: "2021-09-30 15:00",
  start_location: "Friedrichstraße 11, Hamburg, Hamburg, Germany",
  end_location: "Stephanstraße 2, Berlin, Berlin, Germany",
  capacity: "Large",
  price_cents: 2900,
  status: 0,
  description: "Hi, I am Marie. My car is nearly empty, so i can take a few items with me.",
  user: marie
)

trip13 = Trip.create!(
  start_time: "2021-09-30 10:00",
  end_time: "2021-09-30 13:00",
  start_location: "Kantstraße 11, Hamburg, Hamburg, Germany",
  end_location: "Münzstraße 2, Berlin, Berlin, Germany",
  capacity: "Medium",
  price_cents: 3000,
  status: 0,
  description: "Hi, I am Otmar. My car is already pretty full but I could still take a few small items with me.",
  user: otmar
)

trip14 = Trip.create!(
  start_time: "2021-09-30 9:00",
  end_time: "2021-09-30 12:00",
  start_location: "Roßberg 4, Hamburg, Hamburg, Germany",
  end_location: "Maximilianstraße 42, Berlin, Berlin, Germany",
  capacity: "Small",
  price_cents: 2500,
  status: 0,
  description: "Hi, I am Jennifer. My car is already pretty full but I could still take a few small items with me.",
  user: jennifer
)

trip15 = Trip.create!(
  start_time: "2021-09-30 7:00",
  end_time: "2021-09-30 10:00",
  start_location: "Holstenwall 11, Hamburg, Hamburg, Germany",
  end_location: "Charlottenstraße 52, Berlin, Berlin, Germany",
  capacity: "Small",
  price_cents: 2600,
  status: 0,
  description: "Hi, I am Marie. My car is already pretty full but I could still take a few small items with me.",
  user: marie
)

trip16 = Trip.create!(
  start_time: "2021-09-30 18:00",
  end_time: "2021-09-30 21:00",
  start_location: "Kreuzweg 19, Hamburg, Hamburg, Germany",
  end_location: "Kantstraße 9, Berlin, Berlin, Germany",
  capacity: "Large",
  price_cents: 2700,
  status: 0,
  description: "Hi, I am Otmar. My car is nearly empty, so i can take a few items with me.",
  user: otmar
)

trip17 = Trip.create!(
  start_time: "2021-09-30 7:00",
  end_time: "2021-09-30 10:00",
  start_location: "Kreuzweg 19, Berlin, Berlin, Germany",
  end_location: "Kantstraße 9, Hamburg, Hamburg, Germany",
  capacity: "Medium",
  price_cents: 2700,
  status: 0,
  description: "Hi, I am Paul. My car is nearly empty, so i can take a few items with me.",
  user: paul
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

booking12 = Booking.create!(
  user: marie,
  trip: trip12,
  status: 0,
  description: "Hi Jenny! I need to water my Monstera, but now stay longer in Berlin. Can you take it for me?",
  size: "Large",
  item: "Monstera"
)

booking13 = Booking.create!(
  user: philipp,
  trip: trip11,
  status: 0,
  description: "Hi Jenny! I forgot my field hockey bag in Hamburg. Now I met a cool field hockey team through Sporty and would like to play more often. Could you pick it?",
  size: "Medium",
  item: "Hockeybag"
)

booking14 = Booking.create!(
  user: philipp,
  trip: trip11,
  status: 0,
  description: "Hi Jenny! I bought a sound system on Ebay-Kleinanzeigen and don't have a car to pick it up right now. If you bring it to me an invitation to the party awaits you",
  size: "Large",
  item: "Sound System"
)

booking15 = Booking.create!(
  user: paul,
  trip: trip11,
  status: 0,
  description: "Hi Jenny! My roommate unfortunately lost her key. So I send her mine. Can you take it with you to Berlin?",
  size: "Small",
  item: "Key"
)

booking16 = Booking.create!(
  user: paul,
  trip: trip11,
  status: 0,
  description: "Hi Jenny! I had one box left over when I moved. Could you still bring it to me?",
  size: "Medium",
  item: "Key"
)
