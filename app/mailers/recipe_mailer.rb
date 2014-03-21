class RecipeMailer < ActionMailer::Base
  default from: "kishorecheruku.ror@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.recipe_mailer.send_recipe.subject
  #
  def send_recipe( recipe_id )
    @greeting = "Hi"
    @recipe = Recipe.find( recipe_id )

    mail to: "kishore.cheruku17@gmail.com",
         from: "kishorecheruku.ror@gmail.com",
         subject: "This is #{@recipe.name} recipe"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.recipe_mailer.spam.subject
  #
  def spam
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
