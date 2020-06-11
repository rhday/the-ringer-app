u = User.create(username: "micah", password: "password")
t = Team.create(name: "voldemort", user: u)

r1 = Ringer.create(name: "ruari day", phone_no: 5555555)
r2 = Ringer.create(name: "meg mcclure", phone_no: 5555555)

u2 = User.create(username: "brit", password: "password")
t2 = Team.create(name: "blue", user: u2)

t.ringers << r1
t.ringers << r2


t2.ringers << r2