u = User.create(username: "Micah", password: "password")
t = Team.create(name: "Voldemort FC", user: u)

r1 = Ringer.create(name: "Ruari Day", phone_no: 5555555)
r2 = Ringer.create(name: "Meg McClure", phone_no: 5555555)

u2 = User.create(username: "Brit", password: "password")
t2 = Team.create(name: "PGP", user: u2)

t.ringers << r1
t.ringers << r2


t2.ringers << r2