class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.text :comment
      t.integer :category_id  
      t.integer :price_id 
      t.integer :scene_id
      t.integer :teach_id 

      t.timestamps
    end
  end
end
