u = User.create(username: "Micah", password: "password")
t = Team.create(name: "Voldemort FC", user: u)

r1 = Ringer.create(name: "Ruari Day", phone_no: 5555555)
r2 = Ringer.create(name: "Meg McClure", phone_no: 5555555)

u2 = User.create(username: "Brit", password: "password")
t2 = Team.create(name: "PGP", user: u2)

RingerTeam.create(ringer: r1, team: t, game_day: Time.now)
RingerTeam.create(ringer: r2, team: t, game_day: Time.now)
RingerTeam.create(ringer: r2, team: t2, game_day: Time.now)