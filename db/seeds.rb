one = Student.create(name: "Masud", mod: 2, username: "s1", password: "1")
two = Student.create(name: "Derick", mod: 2, username: "s2", password: "1")
three = Student.create(name: "Vadim", mod: 1, username: "s3", password: "1")
four = Student.create(name: "Gina", mod: 1, username: "s4", password: "1")
five = Student.create(name: "Tito", mod: 2, username: "s5", password: "1")

onee = Plank.create(planktype: "High Plank")
twoo = Plank.create(planktype: "Low Plank")
threee = Plank.create(planktype: "Knee Plank")
fourr = Plank.create(planktype: "Side Plank")
fivee = Plank.create(planktype: "Forever Plank")

oone = StudentPlank.create(student: one, plank: onee, duration: 2.35)
ttwo = StudentPlank.create(student: two, plank: twoo, duration: 3.00)
tthree = StudentPlank.create(student: three, plank: fourr, duration: 4.12)
ffour = StudentPlank.create(student: four, plank: threee, duration: 1.54)
ffive = StudentPlank.create(student: five, plank: fivee, duration: 5.00)
ssix = StudentPlank.create(student: one, plank: twoo, duration: 3.00)
sseven = StudentPlank.create(student: three, plank: onee, duration: 2.35)
eeight = StudentPlank.create(student: two, plank: fourr, duration: 1.54)
nnine = StudentPlank.create(student: four, plank: threee, duration: 4.12)
