# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

Trip.destroy_all

Attraction.destroy_all

State.destroy_all

luzy = User.create(name: 'Luzy Bryski', email: 'luzy@gmail.com', username: 'luzyb', password: 'password')

west = Trip.create(name: 'West Coast Trippin', start_date: '2021-05-25', end_date: '2021-06-03', img: 'https://res.cloudinary.com/dlhbuxc82/image/upload/v1621923590/westcoast_zqqr3b.jpg', user: luzy)
east = Trip.create(name: 'Ny Baby!', start_date: '2021-06-15', end_date: '2021-06-25', img: 'https://res.cloudinary.com/dlhbuxc82/image/upload/v1621923589/eastcoast_mknbr9.jpg', user: luzy)
coast = Trip.create(name: 'Fun In The Sun', start_date: '2021-07-05', end_date: '2021-07-20', img: 'https://res.cloudinary.com/dlhbuxc82/image/upload/v1621923562/coast_dwgiwr.jpg', user: luzy)

west.attractions.create([{name: 'Dodger Stadium', pricing: 'Moderate', date: '2021-05-26', location: 'Los Angeles, CA', img: 'https://res.cloudinary.com/dlhbuxc82/image/upload/v1621923579/dodgerstadium_d7wwxl.jpg'}, {name: 'Seaworld', pricing: 'Moderate', date: '2021-05-27', location: 'San Diego, CA', img: 'https://res.cloudinary.com/dlhbuxc82/image/upload/v1621923590/seaworld_h0hnud.jpg'}, {name: 'Golden Gate Bridge', pricing: 'Free', date: '2021-05-28', location: 'San Francisco, CA', img: 'https://res.cloudinary.com/dlhbuxc82/image/upload/v1621923603/goldengatebridge_rqekok.jpg'}])
east.attractions.create([{name: 'Statue of Liberty', pricing: 'Moderate', date: '2021-06-15', location: 'New York, NY', img: 'https://res.cloudinary.com/dlhbuxc82/image/upload/v1621923564/statueofliberty_su7wph.jpg'}, {name: 'Fenway Park', pricing: 'Expensive', date: '2021-06-17', location: 'Boston, MA', img: 'https://res.cloudinary.com/dlhbuxc82/image/upload/v1621923614/fenwaypark_wfbsqp.jpg'}])
coast.attractions.create([{name: 'Miami Beach', pricing: 'Free', date: '2021-07-05', location: 'Miami, FL', img: 'https://res.cloudinary.com/dlhbuxc82/image/upload/v1621923562/miamibeach_tsdvtd.jpg'}, {name: 'World of Coca-Cola', pricing: 'Moderate', date: '2021-07-07', location: 'Atlanta, GA', img: 'https://res.cloudinary.com/dlhbuxc82/image/upload/v1621923565/cocacolafactory_tkeard.jpg'}])

west.todos.create([{content: 'Food for the way', completed: false}, {content: 'Book hotel in SD', completed: false}])
east.todos.create(content: 'Find kosher restaurant in Manhattan', completed: false)
coast.todos.create(content: 'Place to stay for shabbos', completed: false)

states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming']

states.each do |state| 
    State.create(name: state)
end

ca = State.where(name: 'California')
ny = State.where(name: 'New York')
ma = State.where(name: 'Massachusetts')
fl = State.where(name: 'Florida')
ga = State.where(name: 'Georgia')

west.states << ca
east.states << ny
east.states << ma
coast.states << fl
coast.states << ga