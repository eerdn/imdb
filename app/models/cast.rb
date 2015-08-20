class Cast < ActiveRecord::Base
	has_many :director_movies
	has_many :actor_movies

	has_many :movies_directed, through: :director_movies, source: :movie
	has_many :movies_acted, through: :actor_movies, source: :movie
end
