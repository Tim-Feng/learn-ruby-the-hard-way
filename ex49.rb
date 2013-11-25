class ParserError < Exception

end

class Sentence

  def initialize(subject, verb, object)
    # remember we take Pair.new(:noun, "princess") structs and convert them
    @subject = subject.word
    @verb = verb.word
    @object = object.word
  end

end

module Parser
  # to look at element in struct
  def self.peek(word_list)
    begin
      word_list.first.token
    rescue
      nil
    end
  end
  # to match the word
  def self.match(word_list, expecting)
    begin
      word = word_list.shift
      if word.token == expecting
        word
      else
        nil
      end
    rescue
      nil
    end
  end
  # to skip if the word meet certain type
  def self.skip(word_list, token)
    while peek(word_list) == token
      match(word_list, token)
    end
  end
  # to parse verb and skip :stop if any
  def self.parse_verb(word_list)
    skip(word_list, :stop)
  
    if peek(word_list) == :verb
      return match(word_list, :verb)
    # if no verb, return error  
    else
      raise ParserError.new("Expected a verb next.")
    end
  end
  # to parse object and skip :stop
  def self.parse_object(word_list)
    skip(word_list, :stop)
    # I don't know why we need this line...
    next_word = peek(word_list)
  
    if next_word == :noun
      return match(word_list, :noun)
    end
    if next_word == :direction
      return match(word_list, :direction)
    else
      raise ParserError.new("Expected a noun or direction next.")
    end
  end
  # to fo¥ind subject and reruen with verb and object into sentence
  def self.parse_subject(word_list, subj)
    verb = parse_verb(word_list)
    obj = parse_object(word_list)
  
    return Sentence.new(subj, verb, obj)
  end
  
  def self.parse_sentence(word_list)
    skip(word_list, :stop)
    # again, I don't know why we peek here
    start = peek(word_list)
  

    if start == :noun
      subj = match(word_list, :noun)
      return parse_subject(word_list, subj)
    elsif start == :verb
      # assume the subject is the player then
      return parse_subject(word_list, Pair.new(:noun, "player"))
    else
      raise ParserError.new("Must start with subject, object, or verb not: #{start}")
    end
  end

end