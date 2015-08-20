class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
    	t.string :name
    	t.date :birtday
    	t.text :bio

      t.timestamps null: false
    end
  end
end
