class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :content
      t.string :published
      t.string :avathar

      t.timestamps
    end
  end
end
