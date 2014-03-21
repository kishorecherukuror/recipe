class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :serves
      t.decimal :cost
      t.string :made_by
      t.datetime :last_made
      t.text :ingredients
      t.string :image

     

      t.timestamps
    end
  end
end
