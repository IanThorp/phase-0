# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # DEFINE method for generating letter and number
    # Create array with b , i , n , g , o
    # Choose a random number of 0 through 4
    # Associate number with value at index of letter array
    # return the value for the random number from 1 to 100


# Check the called column for the number called.
  # check first array at the same index as chosen letter
  # check second array for same... etc


# If the number is in the column, replace with an 'x'
  # IF the random number is equal to the number in the checked location
    # replace the number with an 'x'
  # ELSE
    # do nothing

# Display a column to the console
  #FOR each array
    # print the number the that is at the called for index

# Display the board to the console (prettily)
  # print the BINGO array
  # print each array with 'x's in proper places. Print them all below the BINGO array

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_letters = [ "B", "I", "N", "G", "O"]
  end

  def call
    @letter_index = rand(0..5)
    @current_letter = @bingo_letters[@letter_index]
    @current_number = rand(1..100)
  end

  def check
    @bingo_letters.each do |letter|
      print "| #{letter}  "
    end
    puts "|"
    @bingo_board.each do |row_array|
      if row_array[@letter_index] == @current_number
        row_array[@letter_index] = "X"
      end
      row_array.each do |number|
        if number.to_s.length == 1
          print "| #{number}  "
        else
        print "| #{number} "
        end
      end
      puts "|"
    end
  end
end

# Refactored Solution

class BingoBoard

  BINGO_LETTERS = [ "B", "I", "N", "G", "O"]
  def initialize(board)
    @bingo_board = board
  end

  def call
    @letter_index = rand(0...BINGO_LETTERS.length)
    @current_letter = BINGO_LETTERS[@letter_index]
    @current_number = rand(1..100)
  end

  def check
    BINGO_LETTERS.each { |letter| print "| #{letter}  " }
    puts "|"
    @bingo_board.each do |row_array|
      row_array[@letter_index] = "X" if row_array[@letter_index] == @current_number
      row_array.each { |number| printf("| %2d ", number) }
      puts "|"
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

  The pseudocoding was actually quite easy. It was already broken down a good extent for me. The basic framework is still there.

What are the benefits of using a class for this challenge?

  Using a class here allows you to have certain methods apply to an instance of this class. Other methods will not get in the way of making this class work.

How can you access coordinates in a nested array?

  Accessing coordinates in a nested array is quite similar to accessing them in a regular array. It is simply going one more layer down. So accessing the index of an index in an array.

What methods did you use to access and modify the array?

  I used each and random methods to modify and find an index in my array.  I considered using find, but I did not think it would be an effecient use of memory. They way that I used the each method seemed to be better.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

  I learned a lot more about the find method. Although, I did not use it, I learned a bit about using find, find_all, and find_index. All very good if you do not know what index in an array a value should appear. In my case, I was only looking at one index at a time for each array.

How did you determine what should be an instance variable versus a local variable?

  Anything that changes with in every new instance of the class should be an instance variable. Anything that stays static regardless of what instance it is in should be a local variable. In this case, the BINGO array was a local variable. Any numbers that are chosen was an instance variable.

What do you feel is most improved in your refactored solution?

  I feel that it is much more legible. First, the way the card prints out is much more concise and makes more sense. I also thing putting everything on less lines makes the code easier to follow.

=end