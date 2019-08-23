# VIEW
# Number FOUR
# Once we start making our applicative layer,
# we'll discover that we need way to present data TO the user,
# and get data FROM the user.
  # That's what the view does.

class View

  # 1. Cake - Cake description
  # 2. Tart - Tart description

  def display(recipes)
    recipes.each_with_index do |recipe, index|
      # We can refactor and write a #to_s method for our model.
      # puts "#{index + 1}. #{recipe.to_s}"
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
  end

  # The two methods below to the same thing. We can refactor them into one.
  # def ask_for(attribute)
  #   puts "What is the #{attribute} of the recipe?"
  #   return gets.chomp
  # end

  def ask_for_name
    puts "What is the name of the recipe?"
    return gets.chomp
  end

  def ask_for_description
    puts "What is the description of the recipe?"
    return gets.chomp
  end

  def ask_for_index
    puts "Give me a number!"
    return gets.chomp.to_i - 1
  end
end
