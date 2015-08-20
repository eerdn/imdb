class Movie < ActiveRecord::Base
	has_many :casts
	has_many :director_movies
	has_many :actor_movies

	has_many :directors, through: :director_movies, source: :cast
	has_many :actors, through: :actor_movies, source: :cast
end
