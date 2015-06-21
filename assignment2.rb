# Create a program to analyze a large block of text and report back 
# on the frequency of each word in the text.

# Start by sorting the text into a hash where each word is a key with the
# word's value being the amount of times it has been used in the block:
#     {the: 10, john: 1, of: 15}

# Once you've created this hash, return the word that has been used the most

# When you're done, encapsulate your script inside of a method that can
# analyze any block of text fed to it


def word_frequency(string)
  words = string.split
  frequency = Hash.new(0)
  words.each { |word| frequency[word.downcase] += 1 }
  return frequency
end

print "What do you have to say to me? "
@word = gets.chomp.downcase

puts word_frequency(@word)