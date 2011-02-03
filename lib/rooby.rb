module Rooby
  def spelling_for( word )
    out = %x[echo '#{word}' | aspell -a --ignore-case]
    out.scan(/[a-z\']+(?=,|\z)/i).first
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
