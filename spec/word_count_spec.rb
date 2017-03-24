require('rspec')
require('word_count')

describe('String#wordcount') do
  it("returns the number of times the word peck is detected in the sentence") do
      expect("If Peter Piper picked a peck of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?".wordcount("peck")).to(eq(2))
  end

  it("returns the number of times the word hello is detected in the sentence regardless of capital letters") do
      expect("Clean clams crammed in clean cans.".wordcount("clean")).to(eq(2))
  end

  it("returns the number of times the word hello is detected in the sentence regardless of punctuation") do
      expect("Can you can a can as a canner can can a can?".wordcount("can")).to(eq(6))
  end
end

describe('String#partialword') do
  it("returns the number of times the word cat is detected in the sentence, even when its a partial") do
      expect("I’m taking my cat on a walk through the catacombs cat.".partialword("cat")).to(eq(3))
  end
end
