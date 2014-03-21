# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


include Faker

Recipe.delete_all
images = ['images.jpg' , 'image3.png' , 'image4.jpg']
50.times do
a = Recipe.create(:name => Company.name,
	      :serves => rand(2..8), 
              :cost => ((rand*10).to_i)/10.0, 
              :made_by => Company.bs, 
              :last_made => Time.now , 
              :ingredients => Lorem.paragraphs(rand(1..4)).join('<br />'),
              :image=> images[rand(1...images.length)]
)
end
Article.delete_all
images = ['images.jpg' , 'image3.png' , 'image4.jpg']
10.times do
a = Article.create(:title => Company.name,
	      :author => Name.name, 
              :content => Lorem.paragraphs(rand(1..4)).join('<br />'), 
              :published => Company.bs, 
              :avathar => images[rand(1...images.length)] , 
            
)

puts a.inspect
end

 
