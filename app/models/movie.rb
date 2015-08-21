class Movie < ActiveRecord::Base
	#has_many :casts

ratyrate_rateable "title", "storyline", "country"
		paginates_per 3

 extend FriendlyId
  friendly_id :title, use: :slugged

	validates :title, :storyline, presence:true
	validates :storyline,length: {minimum: 50}

	has_many :director_movies
	has_many :actor_movies

	has_many :directors, through: :director_movies, source: :cast
	has_many :actors, through: :actor_movies, source: :cast

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
