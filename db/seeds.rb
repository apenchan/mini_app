Arrangement.delete_all
Flower.delete_all
Customer.delete_all

Arrangement.create([{price: 60.99, occasion: "Valentines Day", card_description: "Roses are red and Violets are blue, can't wait to be near you"}, {price: 29.99, occasion: "I'm sorry for you loss", card_description: "I'm sorry to hear for your loss. Thinking of you"}, {price: 39.99, occasion: "Mothers Day", card_description: "You are absolutely the best mother ever!"}])
Flower.create([{flower_name: "Roses", color: "red", img_url: "http://bit.ly/29q4eg9"},{flower_name: "Daisy", color: "white", img_url: "http://bit.ly/29Sa3Sj"},{flower_name: "Carnation", color: "pink", img_url: "http://bit.ly/29S9Azn"},{flower_name: "Dahlia", color: "purple", img_url: "http://bit.ly/29BrSWM"} ])
Customer.create([{first_name:"James", last_name:"Isacc", address:"57474 Willamsburg Rd, NY New York", email:"james@gmail.com", telephone:"625374384"},{first_name:"Anna", last_name:"Penchansky", address:"197 Hampton Circle Jupiter,Fl 33458", email:"anna@gmail.com", telephone:"5616620891"},{first_name:"Ohad", last_name:"Stoller", address:"8947 5th Ave, NY New York", email:"ohad@gmail.com", telephone:"894894897234"}])



