require('rspec')
require('word_count')

describe('String#wordcount') do
  it("returns the number of times the word peck is detected in the sentence") do
      expect("If Peter Piper picked a peck of pickled peppers, where’s the peck of pickled peppers Peter Piper picked? ".wordcount("peck")).to(eq(2))
  end

  it("returns the number of times the word hello is detected in the sentence regardless of capital letters and ") do
      expect("Clean clams crammed in clean cans.".wordcount("clean")).to(eq(2))
  end
end
