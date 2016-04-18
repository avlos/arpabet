module Arpabet
  class Phrase
    def initialize(encoding)
      @encoding = encoding
      @tokens = []
    end

    def push(token)
      @tokens.push(token)
    end

    def join
      @tokens.map do |token|
        token.public_send(@encoding)
      end.join
    end
  end
end
