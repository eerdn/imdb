class ActorMovie < ActiveRecord::Base
	belongs_to :cast
	belongs_to :movie
end
