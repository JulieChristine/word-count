require('rspec')
require('word_count')

describe('String#wordcount') do
  it("returns the number of peck") do
      expect("If Peter Piper picked a peck of pickled peppers, where’s the peck of pickled peppers Peter Piper picked? ".wordcount("peck")).to(eq(2))
  end
end
