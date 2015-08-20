class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.text :content
    	t.date :postdate
    	t.string :subject

      t.timestamps null: false
    end
  end
end
