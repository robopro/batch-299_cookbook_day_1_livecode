# REPOSITORY
# Number TWO (for now dun dun DUN . . .)
# This stores our model instances.

require 'csv'
require_relative 'recipe'

class Cookbook
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @recipes = []
    load_from_csv
  end

  def all
    return @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    save_to_csv
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    save_to_csv
  end

  private

  def load_from_csv()
    CSV.foreach(@csv_file_path) do |row|
      @recipes << Recipe.new(row.first, row.last)
    end
  end

  def save_to_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      @recipes.each do |recipe|
        # We can write our own #to_csv method for our model
        # csv << recipe.to_csv
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
