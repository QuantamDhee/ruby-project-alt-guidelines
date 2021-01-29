john = User.create(name: "Johndhee")
erik = User.create(name: "Erik")
adan = User.create(name: "Adan")
peyt = User.create(name: "Peyton")
lantz = User.create(name: "Lantz")

maple = Game.create(name: "Maplestory")
pubg = Game.create(name: "PUBG")
cod = Game.create(name: "Call of Duty")
osu = Game.create(name: "OSU!")
poe = Game.create(name: "Path of Exile")

Review.create(user_id: john.id, game_id: maple.id, message: "Best game to get bored.")
Review.create(user_id: erik.id, game_id: pubg.id, message: "Game is too easy, EZ Kills, EZ Game!")
Review.create(user_id: adan.id, game_id: cod.id, message: "You're bad 1v1 me bruv. Adan#5555.")
Review.create(user_id: peyt.id, game_id: osu.id, message: "All I do is use my fingers for rhythm.")
Review.create(user_id: lantz.id, game_id: poe.id, message: "End game is all about one shotting and fashion!")

