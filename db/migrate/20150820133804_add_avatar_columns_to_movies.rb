class AddAvatarColumnsToMovies < ActiveRecord::Migration
 def up
    add_attachment :movies, :avatar, :string
  end

  def down
    remove_attachment :movies, :avatar
  end
end
