# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Carla", username: "sticklercarla", password: "123")
User.create(name: "Adam", username: "pasulka", password: "123")
User.create(name: "Sarah", username: "dellorto", password: "123")
User.create(name: "Rachel", username: "roth", password: "123")

Song.create(title: "Heartbreaker", composer: "Geoff Gill", lyricist: "Cliff Wade", performed_by: "Pat Benatar", style: "Rock", user_id: 1)
Song.create(title: "Change In Me", composer: "Alan Menken", lyricist: "Tim Rice", performed_by: "Andrea McArdle", style: "Disney", user_id: 1)
Song.create(title: "Heartbreaker", composer: "Geoff Gill", lyricist: "Cliff Wade", performed_by: "Pat Benatar", style: "Rock", user_id: 3)
Song.create(title: "Heartbreaker", composer: "Geoff Gill", lyricist: "Cliff Wade", performed_by: "Pat Benatar", style: "Rock", user_id: 4)
Song.create(title: "I Have Confidence", composer: "Richard Rogers", lyricist: "Oscar Hammerstein II", performed_by: "Julie Andrews", style: "Golden Age", user_id: 1)
Song.create(title: "Bohemian Rhapsody", composer: "Freddie Mercury", performed_by: "Freddie Mercury", style: "Rock", user_id: 2)

CastingOffice.create(name: "Other")
CastingOffice.create(name: "Telsey + Company")
CastingOffice.create(name: "Tara Rubin Casting")
CastingOffice.create(name: "Jim Carnahan and Associates")
CastingOffice.create(name: "Andrew Rasmussen")
CastingOffice.create(name: "Stephanie Klapper Casting")
CastingOffice.create(name: "Michael Cassara Casting")
CastingOffice.create(name: "Alan Filderman Casting")
CastingOffice.create(name: "Judy Henderson & Associates Casting")
CastingOffice.create(name: "Donald Case Casting")
CastingOffice.create(name: "Breanna Benjamin Casting")
CastingOffice.create(name: "Stuart Howard Associates, LTD")
CastingOffice.create(name: "Stewart Whitley Casting")
CastingOffice.create(name: "McCorkle Casting")
CastingOffice.create(name: "Avy Kaufman Casting")

AuditionLocation.create(name: "At Casting Office")
AuditionLocation.create(name: "Ripley-Grier 520 8th Ave")
AuditionLocation.create(name: "Pearl Studios")
AuditionLocation.create(name: "Nola Studios")
AuditionLocation.create(name: "Champions Studios")
AuditionLocation.create(name: "Simple Studios")
AuditionLocation.create(name: "Shetler Studios")
AuditionLocation.create(name: "Smash Studios")
AuditionLocation.create(name: "Michiko Studios")
AuditionLocation.create(name: "Ripley-Grier 939 8th Ave")
AuditionLocation.create(name: "Ripley-Grier 131 W 72nd St")
AuditionLocation.create(name: "Actors Equity")

Audition.create(user_id: 1, song_id: 1, casting_office_id: 1, style: "Musical Theatre Pop/Rock", audition_location_id: 1, song_length: "32 bars", musical_title: "Hamilton", appointment: true, sides: true, sides_performed: true)
Audition.create(user_id: 1, song_id: 1, casting_office_id: 1, style: "Contemporary", audition_location_id: 1, song_length: "16 bars", musical_title: "Wicked", appointment: true, sides: true, sides_performed: true)
Audition.create(user_id: 1, song_id: 1, casting_office_id: 1, style: "Musical Theatre Pop/Rock", audition_location_id: 1, song_length: "32 bars", musical_title: "Mamma Mia!", appointment: true, sides: true, sides_performed: true)
Audition.create(user_id: 1, song_id: 6, casting_office_id: 1, style: "Rock", audition_location_id: 1, song_length: "32 bars", musical_title: "Be More Chill", appointment: true, sides: true, sides_performed: true)
Audition.create(user_id: 2, song_id: 1, casting_office_id: 3, style: "Classical Musical Theatre", audition_location_id: 1, song_length: "32 bars", musical_title: "Phantom of the Opera", appointment: true, sides: true, sides_performed: true)

Audition.create(user_id: 2, song_id: 1, casting_office_id: 2, style: "Contemporary", audition_location_id: 2, song_length: "16 bars", musical_title: "Wicked", appointment: false, sides: false, sides_performed: false)