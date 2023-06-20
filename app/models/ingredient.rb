# Represents the Ingredient model, association with recipe model and validate data
class Ingredient < ActiveRecord::Base
  belongs_to :recipe, inverse_of: :ingredients

  validates :name, presence: true, length: { maximum: 100 }
end
