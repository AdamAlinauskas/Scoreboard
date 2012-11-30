require 'scoreboard'
require 'scorecard'

describe 'scoreboard' do 
	before(:each) do 
		@sut = Scoreboard.new
	end

	it 'Should save and retrieve cards' do
		@sut.add(Scorecard.new("Andy","Elder Scrolls","Level 60"))
		
		first_card = @sut.all[0]
		first_card.name.should eq('Andy')
	end

	it 'Should group cards by name' do
		@sut.add(Scorecard.new("Andy","Elder Scrolls","Level 60"))
		@sut.add(Scorecard.new("Andy","WOW","Level 60"))
		@sut.add(Scorecard.new("Adam","Halo 4","Points 3000"))
		@sut.add(Scorecard.new("Adam","Gears of war","Exp 30222"))

		cards = @sut.cards_by_name['Adam']
		cards.count.should eq 2

		print cards
	end
end