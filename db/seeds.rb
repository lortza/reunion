# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 # t.string   "name"
 #    t.string   "venue"
 #    t.string   "street_address"
 #    t.string   "city"
 #    t.string   "state"
 #    t.string   "zip"
 #    t.string   "website"
 #    t.text     "description"
 #    t.datetime "created_at",     null: false
 #    t.datetime "updated_at",     null: false
 #  end

 #  create_table "events", force: :cascade do |t|
 #    t.string   "name"
 #    t.date     "date"
 #    t.time     "start_time"
 #    t.time     "end_time"
 #    t.string   "venue"
 #    t.string   "street_address"
 #    t.string   "city"
 #    t.string   "state"
 #    t.string   "zip"
 #    t.string   "website"
 #    t.text     "description"
 #    t.datetime "created_at",     null: false
 #    t.datetime "updated_at",     null: false

Event.create!([
  {
    name: 'Pittsburgh Adventure Day',
    date: "2016-12-15",
    start_time: "8:00",
    end_time: "10:00",
    venue: "Just Duck Tours",
    street_address: "501 Grant Street",
    city: "Pittsburgh",
    state: "Pennsylvania",
    zip: "15216",
    website: "http://website.com",
    description: 
    %{
      Ride the Rubber Duck and go to the Distillery.
    }.squish,
    
  },
  {
    name: "Laurel Highlands Sight Seeing Day",
    date: "2016-07-15",
    start_time: "8:00",
    end_time: "10:00",
    venue: "Fallingwater",
    street_address: "1 Fallingwarer Place",
    city: "Rector",
    state: "Pennsylvania",
    zip: "16872",
    website: "http://website.com",
    description: 
    %{
      Venture into the beautiful Laurel Highlands and tour Frank Lloyd Wright's famous 'Fallingwater'. Then swing down to see the Flight 93 memorial and some French & Indian War stuff and the flood museum in Johnstown."
    }.squish,
  },
  {
    name: "Ohiopyle Adventure Day",
    date: "2016-08-12",
    start_time: "8:00",
    end_time: "10:00",
    venue: "Ohiopyle State Park",
    street_address: "1 Ohiopyle Drive",
    city: "Ohiopyle",
    state: "Pennsylvania",
    zip: "18276",
    website: "http://website.com",
    description: 
      %{
        Then head down the valley to Ohiopyle and rent kayaks and bikes. Pedal upstream to Confluence then hop in a kayak and paddle back down to Ohiopyle for lunch. Or hike the trails around Ohiopyle. End the evening at the Old Buckhouse in Donegal for live music.
      }.squish,
  },
  {
    name: "Classy Pittsburgh",
    date: "2015-07-13",
    start_time: "8:00",
    end_time: "10:00",
    venue: "Mount Washington",
    street_address: "100 Lebo Lane",
    city: "Pittsburgh",
    state: "Pennsylvania",
    zip: "15216",
    website: "http://website.com",
    description: 
    %{
      Get picked up by Classy Cab. Ride off to the Andy Warhol Museum and Phipps Consevatory. Ride the Incline up Mt Washington for a fancy lunch in an expensive restaurant overlooking the whole city and 3-river valley. Ride back down into the city and catch the opera or something else fancy. Then get delivered back home by Classy Cab. 
    }.squish,
  }
])

Activity.create!([
  {
    name: "Paddle Boats & Canoes", 
    venue: "Twin Lakes Park", 
    street_address: "5432 Twin Lakes Park Road",
    city: "Greensburg",
    state: "Pennsylvania",
    zip: "15601",
    website: "http://website.com",
    description: "Rent paddle boats or canoes and play in the small lake at Twin Lakes county park."
  },
  {
    name: "Fishing and Big Slide Park Day", 
    venue: "Mammoth Park",
    street_address: "123 Mammoth Drive",
    city: "Rector",
    state: "Pennsylvania",
    zip: "15672",
    website: "http://website.com",
    description: "Put on your big boys pants and slide down the monster slide that claimed many skinned knees and elbows of our childhood."
  },
  {
    name: "Paintball",
    venue: "Blast-o-Rama",
    street_address: "10492 Rt 30 East",
    city: "Greensburg",
    state: "Pennsylvania",
    zip: "15601",
    website: "http://website.com",
    description: "Go blast each other with pain balls. Super fun! Not for the faint of heart."
  },
  {
    name: "Clean out Ray's Garage",
    venue: "Ray's house",
    street_address: "123 Main Street",
    city: "Greensburg",
    state: "Pennsylvania",
    zip: "15601",
    website: "http://website.com",
    description: "Um, Ray's garage is a wreck and he needs help to move crap out of it and up to the curb."
  },
  {
    name: "Tax-Free Clothing Shopping",
    venue: "Westmoreland Mall",
    street_address: "300 South Greensburg Drive",
    city: "Greensburg",
    state: "Pennsylvania",
    zip: "15601",
    website: "http://website.com",
    description: "There's no tax on clothing in Pennsylvania, so go have a field day."
  }
  ])

State.create(name: 'Alabama', abbreviation: 'AL')
State.create(name: 'Alaska', abbreviation: 'AK')
State.create(name: 'Arizona', abbreviation: 'AZ')
State.create(name: 'Arkansas', abbreviation: 'AR')
State.create(name: 'California', abbreviation: 'CA')
State.create(name: 'Colorado', abbreviation: 'CO')
State.create(name: 'Connecticut', abbreviation: 'CT')
State.create(name: 'Delaware', abbreviation: 'DE')
State.create(name: 'Florida', abbreviation: 'FL')
State.create(name: 'Georgia', abbreviation: 'GA')
State.create(name: 'Hawaii', abbreviation: 'HI')
State.create(name: 'Idaho', abbreviation: 'ID')
State.create(name: 'Illinois', abbreviation: 'IL')
State.create(name: 'Indiana', abbreviation: 'IN')
State.create(name: 'Iowa', abbreviation: 'IA')
State.create(name: 'Kansas', abbreviation: 'KS')
State.create(name: 'Kentucky', abbreviation: 'KY')
State.create(name: 'Louisiana', abbreviation: 'LA')
State.create(name: 'Maine', abbreviation: 'ME')
State.create(name: 'Maryland', abbreviation: 'MD')
State.create(name: 'Massachusetts', abbreviation: 'MA')
State.create(name: 'Michigan', abbreviation: 'MI')
State.create(name: 'Minnesota', abbreviation: 'MN')
State.create(name: 'Mississippi', abbreviation: 'MS')
State.create(name: 'Missouri', abbreviation: 'MO')
State.create(name: 'Montana', abbreviation: 'MT')
State.create(name: 'Nebraska', abbreviation: 'NE')
State.create(name: 'Nevada', abbreviation: 'NV')
State.create(name: 'New Hampshire', abbreviation: 'NH')
State.create(name: 'New Jersey', abbreviation: 'NJ')
State.create(name: 'New Mexico', abbreviation: 'NM')
State.create(name: 'New York', abbreviation: 'NY')
State.create(name: 'North Carolina', abbreviation: 'NC')
State.create(name: 'North Dakota', abbreviation: 'ND')
State.create(name: 'Ohio', abbreviation: 'OH')
State.create(name: 'Oklahoma', abbreviation: 'OK')
State.create(name: 'Oregon', abbreviation: 'OR')
State.create(name: 'Pennsylvania', abbreviation: 'PA')
State.create(name: 'Rhode Island', abbreviation: 'RI')
State.create(name: 'South Carolina', abbreviation: 'SC')
State.create(name: 'South Dakota', abbreviation: 'SD')
State.create(name: 'Tennessee', abbreviation: 'TN')
State.create(name: 'Texas', abbreviation: 'TX')
State.create(name: 'Utah', abbreviation: 'UT')
State.create(name: 'Vermont', abbreviation: 'VT')
State.create(name: 'Virginia', abbreviation: 'VA')
State.create(name: 'Washington', abbreviation: 'WA')
State.create(name: 'West Virginia', abbreviation: 'WV')
State.create(name: 'Wisconsin', abbreviation: 'WI')
State.create(name: 'Wyoming', abbreviation: 'WY')