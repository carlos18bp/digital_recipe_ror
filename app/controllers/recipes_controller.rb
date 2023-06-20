# Search and show action controller for recipes
class RecipesController < ApplicationController

  # Catching and redirecting information to show action controller
  def index; end

  # Filtering and displaying recipes and ingredients
  def show
    cuisine = params.permit(:cuisine)[:cuisine]
    ingredient_name = params.permit(:ingredient)[:ingredient]

    @recipes ||=
    if cuisine.present? && ingredient_name.present?
      Recipe.filter_by_cuisine_and_ingredient_name(cuisine, ingredient_name)
    elsif cuisine.present?
      Recipe.filter_by_cuisine(cuisine)
    elsif ingredient_name.present?
      Recipe.filter_by_ingredient_name(ingredient_name)
    else
      Recipe.all
    end
  end
end
