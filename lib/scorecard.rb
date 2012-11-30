class Scorecard
	attr_accessor :name, :game, :score

	def initialize(name,game,score)
		@name = name;
		@game = game;
		@score = score;
	end


end