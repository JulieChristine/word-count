require ('pry')

class String
  define_method(:wordcount) do |doubles|
    sentence = self
    # Remove the punctuation from the sentence.
    new_sentence = sentence.gsub(/[^0-9A-Za-z' ']/, '')
    # The sentence is downcase.
    # Split by spaces the sentence in an array.
    words = new_sentence.downcase().split(" ")
    # Method counts the number of times an argument is present in the array.
    count = words.count(doubles)
  end
end

class String
  define_method(:partialword) do |partial|
    count_partial = 0
    phrase = self
    # Remove the punctuation from the sentence.
    new_phrase = phrase.gsub(/[^0-9A-Za-z' ']/, '')
    # The sentence is downcase.
    # Split by spaces the sentence in an array.
    new_words = new_phrase.downcase().split(" ")
    new_words.each() do |word|
      if word.include?(partial)
          count_partial+=(1)
      end
    end
    count_partial
  end
end
