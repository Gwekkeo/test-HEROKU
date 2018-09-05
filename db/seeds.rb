nb_user = 4


puts "-"*50
puts "\t----- Création de #{nb_user} User -----"
puts "-"*50
nb_user.times do |i|
	if i%2 == 1
		user = User.create(email: "email#{i+1}@test.com", password: "jetest", donateur: 1)
		Don.create(user_id: user.id, don: rand(1.0..250.0).round(2) )
		puts "Création de l'user N°#{i+1} qui est donateur de #{Don.last.don}"
	else
		User.create(email: "email#{i+1}@test.com", password: "jetest")
		puts "Création de l'user N°#{i+1}"
	end
end

