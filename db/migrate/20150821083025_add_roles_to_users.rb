class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_admin, :boolean, default:false
    add_column :users, :is_moderator, :boolean,  dafault:false
  end
end
