#ADDS THE CURRENT FOLDER TO THE SEARCH PATH
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'sinatra'
require 'lib/scoreboard'
require 'lib/scorecard'

get '/' do
	sb = Scoreboard.new
	sb.add(Scorecard.new('regis', 'Starcraft','9999'))
	sb.add(Scorecard.new('adam', 'GTA 3','level 7'))
   	sb.add(Scorecard.new('andy', 'Commander Keen','level 11'))

	haml :index, :locals => { :scoreboard => sb.cards_by_name, :title => "2012 Game score board"}

end
