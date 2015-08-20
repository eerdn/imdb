class Cast < ActiveRecord::Base
	has_many :director_movies
	has_many :actor_movies

	has_many :movies_directed, through: :director_movies, source: :movie
	has_many :movies_acted, through: :actor_movies, source: :movie


	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
