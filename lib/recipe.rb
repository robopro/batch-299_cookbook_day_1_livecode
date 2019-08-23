# MODEL
# Number ONE!
# The model is the first thing we build

class Recipe
  attr_reader :name, :description
  # STATE
  def initialize(name, description)
    @name = name
    @description = description
  end

  # The two methods below are examples of refactoring,
  # and custom methods we can write to make our life easier.
  def to_s
    return "#{@name} - #{@description}"
  end

  def to_csv
    return [@name, @description]
  end
end
