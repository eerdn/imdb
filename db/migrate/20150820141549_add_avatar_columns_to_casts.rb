class AddAvatarColumnsToCasts < ActiveRecord::Migration
  def up
    add_attachment :casts, :avatar, :string
  end

  def down
    remove_attachment :casts, :avatar
  end
end
