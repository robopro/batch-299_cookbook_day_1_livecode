# CONTROLLER
# Number THREE
# Once we have our data layer:
  # We have our MODEL and a place to store INSTANCES of the MODEL
  # We can start thinking about the applicative layer.
  # Ie our *USER STORIES*
    # The controller instance methods describe the USER ACTIONS we want.

require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # 1. Get array of recipe instances from instance of cookbook
    recipes = @cookbook.all
    # 2. Send all the recipes to the view
    @view.display(recipes)
  end

  def create
    # 1. Ask the user for name, through view
    # name = @view.ask_for("name")
    name = @view.ask_for_name
    # 2. Ask the user for description . . .
    # description = @view.ask_for("description")
    description = @view.ask_for_description
    # 3. Create a new instance of the class Recipe
    recipe = Recipe.new(name, description)
    # 4. Send the recipe instance to cookbook
    @cookbook.add_recipe(recipe)
  end

  def destroy
    list
    # 2. Ask the user for a number (index) through the view
    index = @view.ask_for_index
    # 3. Tell the cookbook to remove the recipe at index
    @cookbook.remove_recipe(index)
  end
end
