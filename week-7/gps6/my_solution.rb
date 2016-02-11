# Virus Predictor

# I worked on this challenge [by, with:Mike  ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
# Stating how the object instances will be instantiated. We will provide 3 arguments at that time and they will be set as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Run our predictions that are further defined in the methods below
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# Based on the density and population for a state, we're determining the number of deaths then printing out the prediction
  def predicted_deaths
    # predicted deaths is solely based on population density
#     Use case/when for determining number of deaths
    case @population_density
    when @population_density >= 200; number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150; number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100; number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50; number_of_deaths = (@population * 0.1).floor
    else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# Based on the population density, this predicts the number of months in which the disease will spread across the state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case
    when @population_density >= 200; speed += 0.5
    when @population_density >= 150; speed += 1
    when @population_density >= 100; speed += 1.5
    when @population_density >= 50; speed += 2
    else speed += 2.5 end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each_key do |state|
  VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects
end

#=======================================================================
# Reflection Section
=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

  The first hash syntax is using strings as the key. The second hash syntax is using symbols as the key.

What does require_relative do? How is it different from require?

  require_relative will find a ruby file that contains code and/or data that the current ruby file needs to operate. This relative file should be in the same directory.  require is used for getting libraries or gems.

What are some ways to iterate through a hash?

  There are many ways to iterate through a hash. We used the for loop originally, but ended up going with a each_key enumerable method.  There are a large number of enumerable methods that iterate through a hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?

  Calling the variables was unnecassary. They are instance variables so we did not need to call anything.

What concept did you most solidify in this challenge?

  Using a for statement in ruby was something I never actually had to use before. It was nice to get familiar with that again. Also, I understand a bit more about instance variables now.

=end