class Lexicon
  # just like example 48
  Pair = Struct.new(:token,:word)

  def initialize
    # so it is the lexicon we have, we list by group in each class variable @words etc.
    @words = %w[north south east west down up left right back]
    @verbs = %w[go stop kill eat]
    @stop_words = %w[the in of from at it]
    @nouns = %w[door bear princess cabinet]
    @number_pattern = "[0-9]+"

  end
  # the scan metod with "stuff" parameter
  def scan(stuff)
    # empty array of sentence
    sentence = []
    # to split user's input
    words = stuff.split
    # to do action of each word
    words.each do |word|
      # to downcase of all word first
      word_d  = word.downcase
    # if there is anything corresponding to our lexicon, 
    # we .push it back to the empty array "sentence"
    if @words.include? word_d
       sentence.push(Pair.new(:direction,word))
    elsif @verbs.include? word_d
      sentence.push(Pair.new(:verb,word))
    elsif @stop_words.include? word_d
     sentence.push(Pair.new(:stop,word))
    elsif @nouns.include? word_d
     sentence.push(Pair.new(:noun,word))
    elsif word.match(@number_pattern)
     sentence.push(Pair.new(:number,word.to_i))
    else
     sentence.push(Pair.new(:error,word))
    end
   end

    sentence
  end

end