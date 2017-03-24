require ('pry')

class String
  define_method(:wordcount) do |doubles|
    # Split by spaces the sentence in an array.
    words = self.downcase().split(" ")
    # method counts the number of times an argument is present in the array.
    count = words.count(doubles)
  end
end
