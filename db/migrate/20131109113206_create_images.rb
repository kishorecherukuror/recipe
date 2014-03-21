class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
