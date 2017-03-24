require('sinatra')
  require('sinatra/reloader')
  require('./lib/word_count')
  also_reload('lib/**/*.rb')
  require('pry')

  get('/') do
    erb(:index)
  end

  get('/counts') do
    @sentence = "For the sentence: "+params.fetch('sentence')
    @word = " times the word "+params.fetch('word').to_s()
    @count = "we count "+params.fetch('sentence').wordcount(params.fetch('word')).to_s()
    erb(:index)
  end

  get('/partial_count') do
    @phrase = "The sentence: "+params.fetch('phrase')
    @partial = " times the word "+params.fetch('partial').to_s()
    @count_partial = "contains and partially contains"+params.fetch('phrase').partialword(params.fetch('partial')).to_s()
    erb(:index)
  end
