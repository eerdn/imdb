class AddSlugToCasts < ActiveRecord::Migration
 
  	 def change
  	add_column :casts, :slug, :string
    add_index :casts, :slug, unique: true

  end
end
