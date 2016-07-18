# Arrangement.delete_all
# Flower.delete_all
# User.delete_all

arrangement = Arrangement.create([{price: 60.99, occasion: "Valentines Day", card_description: "Roses are red and Violets are blue, can't wait to be near you"},{price: 29.99, occasion: "I'm sorry for you loss",card_description: "I'm sorry to hear for your loss. Thinking of you"}, {price: 39.99, occasion: "Mothers Day", card_description: "You are absolutely the best mother ever!"}])
flower = Flower.create([{flower_name: "Roses", color: "red", img_url: "http://bit.ly/29q4eg9"},{flower_name: "Daisy", color: "white", img_url: "http://bit.ly/29Sa3Sj"},{flower_name: "Carnation", color: "pink", img_url: "http://bit.ly/29S9Azn"},{flower_name: "Dahlia", color: "purple", img_url: "http://bit.ly/29BrSWM"} ])
user = User.create([{first_name:"James", last_name:"Isacc", address:"57474 Willamsburg Rd, NY New York"},{first_name:"Anna", last_name:"Penchansky", address:"197 Hampton Circle Jupiter,Fl 33458"},{first_name:"Ohad", last_name:"Stoller", address:"8947 5th Ave, NY New York"}])


# for u in user
# 	for f in flower
# 		u.arrangement.push(f)
# 	end
# end
# user[0].arrangement.push(flower[0])

# arrangement.flowers << flower
# user.flowers << flower



