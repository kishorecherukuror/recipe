json.array!(@recipes) do |recipe|
  json.extract! recipe, :name, :made_by, :ingredients, :last_made, :image, :serves, :cost
  json.url recipe_url(recipe, format: :json)
end
