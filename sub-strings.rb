require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(user_input,dictionary)

    # Initialize hash
    result = Hash.new(0)

    # Loop through the dictionary...
    dictionary.each do |word|
        # Scan our user's input for the total occurences of the current word, which gets pushed to an array...
        matches = user_input.scan(word).length
        # ... and then add the #length of that array to a key in our hash, but only if there are more than 0 occurrences
        result[word] += matches if matches > 0
    end

    # Finally, print the resulting hash
    p result
end

print 'Your word(s): '
your_word = gets.to_s.chomp

sub_strings(your_word,dictionary)