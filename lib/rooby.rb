module Rooby
  def speller
    @speller ||= {}
  end

  def spelling_for( word )
    return i_know_that_word if i_know_that_word = speller[word]
    out = %x[echo '#{word}' | aspell -a --ignore-case]
    spelling = out.scan(/[a-z\']+(?=,|\z)/i).first
    speller[word] = spelling
    spelling
  end
  
  def method_missing( method, *args)
    method = method.to_s.split( "_" ).map{ |w| spelling_for( w ) || w }.join( "_" )
    self.send( method, *args )
  end
end

class Class
  include Rooby
  class << self; include Rooby end
end
