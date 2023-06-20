# Represents the Recipe Model, association with ingredients,
# validate data and implement recipes methods
class Recipe < ActiveRecord::Base
  has_many :ingredients, inverse_of: :recipe

  validates :name, presence: true, length: { maximum: 100 }
  validates :instructions, presence: true, length: { maximum: 1000 }
  validates :cooking_time, numericality: { greater_than: 0 }

  # Filtering by ingredient name  field into recipe and ingredients models
  def self.filter_by_cuisine_and_ingredient_name(cuisine, ingredient_name)
    joins(:ingredients).where(cuisine: cuisine, ingredients: { name: ingredient_name })
  end

  # Filtering by cuisine field into recipe model
  def self.filter_by_cuisine(cuisine)
    where(cuisine: cuisine)
  end

  # Filtering by ingredient name field between recipe and ingredients models
  def self.filter_by_ingredient_name(ingredient_name)
    joins(:ingredients).where(ingredients: { name: ingredient_name })
  end
end
