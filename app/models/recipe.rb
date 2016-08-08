class Recipe
	include HTTParty
	#FOOD2FORK_KEY="85bae595c570a0a4012e7d86cf2618ed"
	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	default_params key: key_value
	format :json

	def self.for (term)
		get("/search", query: {q: term})["recipes"]
	end
end
