class DirectorMovie < ActiveRecord::Base
	belongs_to :cast
	belongs_to :movie
end
