class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
    	t.string :title
    	t.text :storyline
    	t.string :country

      t.timestamps null: false
    end
  end
end
