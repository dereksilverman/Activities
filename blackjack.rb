puts "Let's play Blackjack, take a card, any card!"
	player_number = Random.new(1..11)
puts "You got a" + player_number + ", would you like to hit again?"
	answer = gets.chomp
	if answer === "Y" then
		player_number = player_number + Random.new(1...11)
		puts player_number
	end


