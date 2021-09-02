require "open-uri"
Chatroom.destroy_all
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
  driver: true
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
  years_driving: 9,
  driver: true
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
  years_driving: 42,
  driver: true
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
  years_driving: 9,
  driver: true
)
file = URI.open("https://res.cloudinary.com/dz3pzigor/image/upload/v1630058540/cargo-team/jennifer_akgt9o.png")
jennifer.avatar.attach(io: file, filename: 'jenny.png', content_type: 'image/png')

paul = User.create!(
  first_name: "Stanislaw",
  last_name: "Nowikow",
  email: "paul@paul.com",
  phone_number: "01745566911",
  address: "Friedrichstraße 32, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Audi A6",
  birthday: 1999-11-16,
  years_driving: 5
)
file = URI.open("https://res.cloudinary.com/dz3pzigor/image/upload/v1630481900/cargo-team/stanislav_mjsarg.png")
paul.avatar.attach(io: file, filename: 'stanislaw.png', content_type: 'image/png')

cheyenne = User.create!(
  first_name: "Cheyenne",
  last_name: "Simoleit",
  email: "chey@chey.com",
  phone_number: "01745566911",
  address: "Friedrichstraße 32, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Toyota Corolla",
  birthday: 1999-11-16,
  years_driving: 5,
  driver: true
)
file = URI.open("https://res.cloudinary.com/dz3pzigor/image/upload/v1630481900/cargo-team/cheyenneSimoleit_oasxif.png")
cheyenne.avatar.attach(io: file, filename: 'cheyenne.png', content_type: 'image/png')

christine = User.create!(
  first_name: "Christine",
  last_name: "Chan",
  email: "christine@christine.com",
  phone_number: "01745566911",
  address: "Friedrichstraße 32, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Toyota Prius",
  birthday: 1999-11-16,
  years_driving: 12
)
file = URI.open("https://res.cloudinary.com/dz3pzigor/image/upload/v1630481900/cargo-team/christineChan_ffyst8.png")
christine.avatar.attach(io: file, filename: 'christine.png', content_type: 'image/png')

james = User.create!(
  first_name: "James",
  last_name: "Hibbeard",
  email: "james@james.com",
  phone_number: "01745566911",
  address: "Friedrichstraße 32, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "VW Golf",
  birthday: 1999-11-16,
  years_driving: 3
)
file = URI.open("https://res.cloudinary.com/dz3pzigor/image/upload/v1630481899/cargo-team/jamesHibbeard_cglo7r.png")
james.avatar.attach(io: file, filename: 'james.png', content_type: 'image/png')

martin = User.create!(
  first_name: "Martin",
  last_name: "Runge",
  email: "martin@martin.com",
  phone_number: "01745566911",
  address: "Friedrichstraße 32, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Smart Car",
  birthday: 1999-11-16,
  years_driving: 10
)
file = URI.open("https://res.cloudinary.com/dz3pzigor/image/upload/v1630481899/cargo-team/martinRunge_r1fksd.png")
martin.avatar.attach(io: file, filename: 'martin.png', content_type: 'image/png')

adam = User.create!(
  first_name: "Adam",
  last_name: "Tomczyk",
  email: "adam@adam.com",
  phone_number: "01745566911",
  address: "Friedrichstraße 32, Berlin, Berlin, Germany",
  password: "123456",
  car_type: "Motorcycle",
  birthday: 1999-11-16,
  years_driving: 15
)
file = URI.open("https://res.cloudinary.com/dz3pzigor/image/upload/v1630482170/cargo-team/adam_xmqtmq.png")
adam.avatar.attach(io: file, filename: 'adam.png', content_type: 'image/png')

trip1 = Trip.create!(
  start_time: "2021-09-03 21:00",
  end_time: "2021-09-03 11:59",
  start_location: "Reeperbahn 9, Hamburg, Hamburg, Germany",
  end_location: "Am Schokoladenmuseum 1a, Cologne, North Rhine-Westphalia, Germany",
  capacity: "Large",
  price_cents: 1500,
  status: 0,
  description: "I will be travelling from Hamburg to Cologne and still have room to take something with me. Up to 25 kilos would be OK. Items weighing more than 10 kilos would have to be stowed in my boot by the sender himself and also lifted out by the recipient.",
  user: marie
)

trip2 = Trip.create!(
  start_time: "2021-09-04 11:00",
  end_time: "2021-09-04 18:00",
  start_location: "Torstraße 123, Berlin, Berlin, Germany",
  end_location: "Riehler Strasse 173, Cologne, North Rhine-Westphalia, Germany",
  capacity: "Large",
  price_cents: 1800,
  status: 0,
  description: "I will drive from Berlin to Cologne with an empty car and take some items with me. Anything heavier than 10 kilos has to be stowed in my car by the transmitter and lifted out by the receiver. Thank you for your understanding!",
  user: marie
)

trip3 = Trip.create!(
  start_time: "2021-09-04 7:00",
  end_time: "2021-09-04 10:00",
  start_location: "Ottenser Hauptstraße 3, Hamburg, Germany",
  end_location: "Pariser Platz, Berlin, Berlin, Germany",
  capacity: "Medium",
  price_cents: 1000,
  status: 0,
  description: "Hi, I am driving from Hamburg to Berlin. I can gladly take something for you on this journey. No pets, no smoking car.",
  user: cheyenne
)

trip4 = Trip.create!(
  start_time: "2021-09-04 09:00",
  end_time: "2021-09-04 17:30",
  start_location: "Frankfurter Allee 12, Berlin, Germany",
  end_location: "Domkloster 4, Cologne, North Rhine-Westphalia, Germany",
  capacity: "Large",
  price_cents: 3200,
  status: 0,
  description: "Hi, I'm driving from Berlin to Cologne in a huge car. I can take anything up to the size of a bicycle. If it weighs more than 30 kilos, it would have to be lifted into the car by the sender and out again by the receiver.",
  user: otmar
)

trip5 = Trip.create!(
  start_time: "2021-09-04 11:30",
  end_time: "2021-09-04 22:30",
  start_location: "Panoramastraße 1A, Berlin, Berlin, Germany",
  end_location: "Boberger Furt 50, Hamburg, Hamburg Germany",
  capacity: "Large",
  price_cents: 1200,
  status: 0,
  description: "Hi, I'm Otmar, driving from Berlin to Hamburg. I can take anything up to the size of a bicycle. If it weighs more than 30 kilos, it would have to be lifted into the car by the sender and out again by the receiver.",
  user: christine
)

trip6 = Trip.create!(
  start_time: "2021-09-04 12:30",
  end_time: "2021-09-04 21:20",
  start_location: "Friedrichstraße 43, Berlin, Berlin, Germany",
  end_location: "Am Genter Ufer 9, Hamburg, Hamburg, Germany",
  capacity: "Large",
  price_cents: 1000,
  status: 0,
  description: "Hi, I'm Otmar, driving from Berlin to Hamburg. Could take some of your goods with me. Feel free to book my trip for this.",
  user: james
)

trip7 = Trip.create!(
  start_time: "2021-09-05 09:30",
  end_time: "2021-09-05 21:20",
  start_location: "Am Tierpark 125, Berlin, Berlin, Germany",
  end_location: "Auenweg Rheinpark, Cologne, North Rhine-Westphalia, Germany",
  capacity: "Medium",
  price_cents: 2800,
  status: 0,
  description: "Hi, I'm driving from Berlin to Cologne. If you want something to be delivered there, please book this trip.",
  user: adam
)

trip8 = Trip.create!(
  start_time: "2021-09-04 07:30",
  end_time: "2021-09-04 10:30",
  start_location: "Glockengießerwall 5, Hamburg, Hamburg, Germany",
  end_location: "Oranienstraße 4, Berlin, Berlin, Germany",
  capacity: "Medium",
  price_cents: 1200,
  status: 0,
  description: "Hi, I am Jennifer. I am driving from Hamburg to Berlin. I would be very happy to take some more items with me - if they are not too big. My car is already pretty full.",
  user: jennifer
)

trip9 = Trip.create!(
  start_time: "2021-09-05 08:30",
  end_time: "2021-09-05 20:20",
  start_location: "Ostmerheimer Strasse 200, Cologne, North Rhine-Westphalia, Germany",
  end_location: "Kehrwieder 2, Hamburg, Hamburg, Germany",
  capacity: "Small",
  price_cents: 1000,
  status: 0,
  description: "Hi, I am Christine. I will drive from Cologne to Hamburg for work. Could take some small goods.",
  user: christine
)

trip10 = Trip.create!(
  start_time: "2021-09-05 09:00",
  end_time: "2021-09-05 15:20",
  start_location: "Herrfurthstraße 21, Berlin, Berlin, Germany",
  end_location: "Bahnhofstraße 5, Hamburg, Hamburg, Germany",
  capacity: "Medium",
  price_cents: 2000,
  status: 0,
  description: "I will drive from Berlin to Hamburg and make some stops along the way. Could take a medium size item with me.",
  user: paul
)

trip11 = Trip.create!(
  start_time: "2021-09-05 17:00",
  end_time: "2021-09-05 23:00",
  start_location: "Hafenstraße 11, Hamburg, Hamburg, Germany",
  end_location: "Torstraße 2, Berlin, Berlin, Germany",
  capacity: "Large",
  price_cents: 2500,
  status: 0,
  description: "Driving from Hamburg to Berlin and can take large items such as furniture. I can also help with loading/unloading.",
  user: james
)

trip12 = Trip.create!(
  start_time: "2021-09-04 12:00",
  end_time: "2021-09-04 15:00",
  start_location: "Friedrichstraße 11, Hamburg, Hamburg, Germany",
  end_location: "Stephanstraße 2, Berlin, Berlin, Germany",
  capacity: "Large",
  price_cents: 1200,
  status: 0,
  description: "Hi, I am Marie. My car is nearly empty, so i can take a few items with me. I am a smoker so you must be alright with that.",
  user: adam
)

trip13 = Trip.create!(
  start_time: "2021-09-04 10:00",
  end_time: "2021-09-04 13:00",
  start_location: "Auguststraße 12, Hamburg, Hamburg, Germany",
  end_location: "Münzstraße 2, Berlin, Berlin, Germany",
  capacity: "Medium",
  price_cents: 1800,
  status: 0,
  description: "Hi, I am Martin. My car is already pretty full but I could still take a few small items or one medium iten with me.",
  user: martin
)

trip14 = Trip.create!(
  start_time: "2021-09-03 9:00",
  end_time: "2021-09-03 12:00",
  start_location: "Roßberg 4, Hamburg, Hamburg, Germany",
  end_location: "Maximilianstraße 42, Berlin, Berlin, Germany",
  capacity: "Small",
  price_cents: 1200,
  status: 0,
  description: "Hi, I am Jennifer. My car is already pretty full but I could still take a few small items with me. I will also have my dog with me.",
  user: jennifer
)

trip15 = Trip.create!(
  start_time: "2021-09-03 7:00",
  end_time: "2021-09-03 10:00",
  start_location: "Holstenwall 11, Hamburg, Hamburg, Germany",
  end_location: "Charlottenstraße 52, Berlin, Berlin, Germany",
  capacity: "Small",
  price_cents: 1000,
  status: 0,
  description: "Hi, I am Marie. My car is already pretty full but I could still take a small item with me.",
  user: james
)

trip16 = Trip.create!(
  start_time: "2021-09-03 18:00",
  end_time: "2021-09-03 21:00",
  start_location: "Kreuzweg 19, Hamburg, Hamburg, Germany",
  end_location: "Kantstraße 9, Berlin, Berlin, Germany",
  capacity: "Large",
  price_cents: 2000,
  status: 0,
  description: "Hi, I am Martin. My car is nearly empty, so i can take a few items with me or one big item such as furniture. I can help with loading and unloading.",
  user: martin
)

trip17 = Trip.create!(
  start_time: "2021-09-05 7:00",
  end_time: "2021-09-05 10:00",
  start_location: "Kreuzweg 19, Berlin, Berlin, Germany",
  end_location: "Kantstraße 9, Hamburg, Hamburg, Germany",
  capacity: "Medium",
  price_cents: 1600,
  status: 0,
  description: "Hi, I am Paul. My car is nearly empty, so i can take a few items with me.",
  user: paul
)

trip18 = Trip.create!(
  start_time: "2021-08-05 12:00",
  end_time: "2021-08-05 17:00",
  start_location: "Kreuzweg 19, Berlin, Berlin, Germany",
  end_location: "Kantstraße 9, Hamburg, Hamburg, Germany",
  capacity: "Medium",
  price_cents: 1600,
  status: 2,
  description: "I will be driving from Berlin to Hamburg to visit family and have room in my car for some extra items.",
  user: philipp
)

trip19 = Trip.create!(
  start_time: "2021-08-24 09:00",
  end_time: "2021-08-24 17:00",
  start_location: "Holstenwall 11, Hamburg, Hamburg, Germany",
  end_location: "Kreuzweg 19, Berlin, Berlin, Germany",
  capacity: "Large",
  price_cents: 2400,
  status: 2,
  description: "I will be driving from Hamburg to Berlin to visit family and have room in my car for one large item or several smaller items.",
  user: philipp
)

trip19 = Trip.create!(
  start_time: "2021-08-01 09:00",
  end_time: "2021-08-01 17:00",
  start_location: "Holstenwall 11, Hamburg, Hamburg, Germany",
  end_location: "Kreuzweg 19, Berlin, Berlin, Germany",
  capacity: "Large",
  price_cents: 2400,
  status: 2,
  description: "I will be driving from Hamburg to Berlin to visit family and have room in my car for one large item or several smaller items.",
  user: jennifer
)

trip20 = Trip.create!(
  start_time: "2021-07-20 11:00",
  end_time: "2021-07-20 20:00",
  start_location: "Holstenwall 11, Hamburg, Hamburg, Germany",
  end_location: "Spandauer Damm 22, Berlin, Berlin, Germany",
  capacity: "Large",
  price_cents: 2400,
  status: 2,
  description: "I will be driving from Hamburg to Berlin to visit family and have room in my car for one large item or several smaller items.",
  user: cheyenne
)

booking1 = Booking.create!(
  user: philipp,
  trip: trip19,
  status: 1,
  description: "Hi Jennifer! I would like to send my plant with you. It's a small sucullent and the soil will be almost dry so no risk of water damage in your car.",
  size: "Small",
  item: "Plant"
)

booking2 = Booking.create!(
  user: philipp,
  trip: trip20,
  status: 1,
  description: "Hi Cheyenne! Could you take my box of books on your trip? My brother can load it into your car and I can unload it.",
  size: "Medium",
  item: "Box of books"
)

booking3 = Booking.create!(
  user: marie,
  trip: trip3,
  status: 0,
  description: "Hi Marie! Could you please pick up my suitcase?.",
  size: "Medium",
  item: "Suitcase"
)

booking4 = Booking.create!(
  user: jennifer,
  trip: trip4,
  status: 0,
  description: "Hi Otmar! Can you please take my little shipment?",
  size: "Small",
  item: "Plates"
)

booking5 = Booking.create!(
  user: marie,
  trip: trip5,
  status: 0,
  description: "Hi Otmar! Would be nice if you could manage to take my bike with you.",
  size: "Large",
  item: "Bike"
)

booking6 = Booking.create!(
  user: jennifer,
  trip: trip6,
  status: 0,
  description: "Hi Otmar! Can you please take a suitcase with you? My flight got rerouted and I got seperated from my luggage.",
  size: "Medium",
  item: "Suitcase"
)

booking7 = Booking.create!(
  user: jennifer,
  trip: trip7,
  status: 0,
  description: "Hi Otmar! Would it be possible for you to take a chair with you and also deliver it? I ordered it on Facebook Marketplace but it's too far for me to pick up!",
  size: "Large",
  item: "Chair"
)

booking8 = Booking.create!(
  user: marie,
  trip: trip8,
  status: 0,
  description: "Hi Jenny! Could you take an expensive item with you and also deliver it?",
  size: "Small",
  item: "Expensive wristwatch"
)

booking9 = Booking.create!(
  user: otmar,
  trip: trip9,
  status: 0,
  description: "Hi Jenny! I left my computer at my friend's house. Can you take it with you?",
  size: "Medium",
  item: "Notebook Computer"
)

booking10 = Booking.create!(
  user: marie,
  trip: trip10,
  status: 0,
  description: "Hi Jenny! Would it be possible for you to give my lamp a ride with you?",
  size: "Medium",
  item: "Bedside lamp"
)

booking11 = Booking.create!(
  user: otmar,
  trip: trip7,
  status: 0,
  description: "Hi Philipp! As a musician I urgently need my vibraphone in Berlin. Could you pick it up?",
  size: "Large",
  item: "Vibraphone"
)

booking12 = Booking.create!(
  user: jennifer,
  trip: trip12,
  status: 0,
  description: "Hi Marie! I need to water my Monstera, but now stay longer in Berlin. Can you take it for me?",
  size: "Large",
  item: "Monstera"
)

booking13 = Booking.create!(
  user: christine,
  trip: trip7,
  status: 0,
  description: "Hi Philipp! I forgot my field hockey bag in Hamburg. Now I met a cool field hockey team through Sporty and would like to play more often. Could you pick it up?",
  size: "Medium",
  item: "Hockeybag"
)

booking14 = Booking.create!(
  user: otmar,
  trip: trip7,
  status: 0,
  description: "Hi Philipp! I bought a sound system on Ebay-Kleinanzeigen and don't have a car to pick it up right now. If you bring it to me an invitation to the party awaits you",
  size: "Large",
  item: "Sound System"
)

booking15 = Booking.create!(
  user: paul,
  trip: trip7,
  status: 0,
  description: "Hi Philipp! My roommate unfortunately lost her key. So I send her mine. Can you take it with you to Berlin?",
  size: "Small",
  item: "Key"
)

booking16 = Booking.create!(
  user: paul,
  trip: trip11,
  status: 0,
  description: "Hi Jenny! I had one box left over when I moved. Could you bring it to me?",
  size: "Medium",
  item: "Moving Box"
)
