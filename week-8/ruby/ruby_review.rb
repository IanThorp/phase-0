# Reverse Words


# I worked on this challenge [by myself ].
# This challenge took me [#] hours.

# Pseudocode
=begin
DEFine a method that takes a string
  Check IF the string has words (not empty)
    Split the sentence into an array of words
    Go over EACH word in the array
      Call a method to reverse each word
    put words back into a string
  ELSE, there is no words
    just return the empty string
=end


# Initial Solution
def reverse_words(sentence)
  if sentence != ""
    sent_array = sentence.split
    sent_array.each do |word|
      word.reverse!
    end
    sentence = sent_array.join(" ")
  end
  sentence
end



# Refactored Solution

def reverse_words(sentence)
    sent_array = sentence.split.each do |word|
      word.reverse!
    end
    sent_array.join(" ")
end


# Reflection
=begin
What concepts did you review or learn in this challenge?

  I reviewed basic method creation. I used some methods for string and array manipulation as well. Overall, it was structure and logic review.

What is still confusing to you about Ruby?

  Classes I think I would still have a little trouble creating. I will do some review of that next.

What are you going to study to get more prepared for Phase 1?

  Classes is what I will study, I should touch on JavaScript and SQL just so I don't fall behind.

=end