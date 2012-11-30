class Scoreboard

	def initialize
		@cards = []
	end

	def add(card)
		@cards.push(card)	
	end

	def all
		@cards
	end

	def cards_by_name
		@cards.group_by {|card| card.name}
	end	

end