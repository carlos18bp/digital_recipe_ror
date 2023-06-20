# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :cuisine
      t.string :name
      t.text :instructions
      t.integer :cooking_time

      t.timestamps null: false
    end
  end
end
