# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Carla", username: "sticklercarla", password: "123", profile_pic: "/images/default_avataaar.png")
User.create(name: "Adam", username: "pasulka", password: "123", profile_pic: "/images/default_avataaar.png")
User.create(name: "Sarah", username: "dellorto", password: "123", profile_pic: "/images/default_avataaar.png")
User.create(name: "Rachel", username: "roth", password: "123", profile_pic: "/images/default_avataaar.png")

Song.create(title: "Heartbreaker", composer: "Geoff Gill", lyricist: "Cliff Wade", performed_by: "Pat Benatar", style: "Rock", user_id: 1, video_key: "mIosHNpGjTE")
Song.create(title: "Change In Me", composer: "Alan Menken", lyricist: "Tim Rice", performed_by: "Andrea McArdle", style: "Disney", user_id: 1, video_key: "X49871VnQoc")
Song.create(title: "Heartbreaker", composer: "Geoff Gill", lyricist: "Cliff Wade", performed_by: "Pat Benatar", style: "Rock", user_id: 3, video_key: "mIosHNpGjTE")
Song.create(title: "Heartbreaker", composer: "Geoff Gill", lyricist: "Cliff Wade", performed_by: "Pat Benatar", style: "Rock", user_id: 4, video_key: "mIosHNpGjTE")
Song.create(title: "I Have Confidence", composer: "Richard Rogers", lyricist: "Oscar Hammerstein II", performed_by: "Julie Andrews", style: "Golden Age", user_id: 1, video_key: "JJYz8pyXOG4")
Song.create(title: "Bohemian Rhapsody", composer: "Freddie Mercury", performed_by: "Freddie Mercury", style: "Rock", user_id: 2, video_key: "fJ9rUzIMcZQ")


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

AuditionLocation.create(name: "Other", latitude: 40.7624490, longitude: -73.98513)
AuditionLocation.create(name: "Tesley + Company", latitude: 40.757438, longitude: -73.986542)
AuditionLocation.create(name: "Ripley-Grier 520 8th Ave", latitude: 40.753742, longitude: -73.992052)
AuditionLocation.create(name: "Pearl Studios", latitude: 40.753275, longitude: -73.992458)
AuditionLocation.create(name: "Nola Studios", latitude: 40.764412, longitude: -73.983364)
AuditionLocation.create(name: "Champions Studios 39th St", latitude: 40.755462, longitude: -73.990349)
AuditionLocation.create(name: "Champions Studios 29th St", latitude: 40.746759, longitude: -73.989217)
AuditionLocation.create(name: "Simple Studios", latitude: 40.747494, longitude: -73.991636)
AuditionLocation.create(name: "Shetler Studios", latitude: 40.764527, longitude: -73.983510)
AuditionLocation.create(name: "Smash Studios", latitude: 40.754264, longitude: -73.992877)
AuditionLocation.create(name: "Michiko Studios", latitude: 40.758748, longitude: -73.984062)
AuditionLocation.create(name: "Ripley-Grier 939 8th Ave", latitude: 40.766156, longitude: -73.983726)
AuditionLocation.create(name: "Ripley-Grier 131 W 72nd St", latitude: 40.778385, longitude: -73.979777)
AuditionLocation.create(name: "Actors Equity", latitude: 40.758675, longitude: -73.984361)

Audition.create(user_id: 1, song_id: 1, casting_office_id: 1, style: "Musical Theatre Pop/Rock", audition_location_id: 1, song_length: "32 bars", musical_title: "Hamilton", appointment: true, sides: true, sides_performed: true, date: "2019-09-20", time: "10:25:00")
Audition.create(user_id: 1, song_id: 1, casting_office_id: 1, style: "Contemporary", audition_location_id: 1, song_length: "16 bars", musical_title: "Wicked", appointment: true, sides: true, sides_performed: true, date: "2019-04-13", time: "15:30:00")
Audition.create(user_id: 1, song_id: 1, casting_office_id: 1, style: "Musical Theatre Pop/Rock", audition_location_id: 1, song_length: "32 bars", musical_title: "Mamma Mia!", appointment: true, sides: true, sides_performed: true, date: "2019-03-20", time: "9:30:00")
Audition.create(user_id: 1, song_id: 6, casting_office_id: 1, style: "Rock", audition_location_id: 1, song_length: "32 bars", musical_title: "Be More Chill", appointment: true, sides: true, sides_performed: true, date: "2019-05-29", time: "16:20:00")
Audition.create(user_id: 2, song_id: 1, casting_office_id: 3, style: "Classical Musical Theatre", audition_location_id: 1, song_length: "32 bars", musical_title: "Phantom of the Opera", appointment: true, sides: true, sides_performed: true, date: "2019-03-02", time: "14:50:00")
Audition.create(user_id: 2, song_id: 1, casting_office_id: 2, style: "Contemporary", audition_location_id: 2, song_length: "16 bars", musical_title: "Wicked", appointment: false, sides: false, sides_performed: false, date: "2019-07-30", time: "13:25:00")