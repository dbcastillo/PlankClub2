Student.destroy_all
Plank.destroy_all
StudentPlank.destroy_all

one = Student.create(name: "Masud", class_number: 2, username: "masud", password: "1", img_url: "Masud.png")
two = Student.create(name: "Derick", class_number: 2, username: "derick", password: "1", img_url: "Drock.png")
three = Student.create(name: "Amirata", class_number: 2, username: "amirata", password: "1", img_url: "Amirata.png")
four = Student.create(name: "Bryan", class_number: 2, username: "bryan", password: "1", img_url: "Bryan.png")
five = Student.create(name: "Tito", class_number: 2, username: "tito", password: "1", img_url: "Tito.png")


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
