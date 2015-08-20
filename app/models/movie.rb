class Movie < ActiveRecord::Base
	#has_many :casts
	has_many :director_movies
	has_many :actor_movies

	has_many :directors, through: :director_movies, source: :cast
	has_many :actors, through: :actor_movies, source: :cast

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
