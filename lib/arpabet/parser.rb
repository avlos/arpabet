module Arpabet
  class Parser
    attr_reader :arpabet

    def initialize(input)
      @arpabet = input
    end

    def tokens
      @arpabet.split(" ")
    end

    def translate(encoding)
      phrases = []
      tokens.each do |token|
        t = Token.new(token)
        t.position == "begining" && phrases.push(Phrase.new(encoding))
        phrases[-1] && phrases[-1].push(t)
      end
      phrases.map(&:join)
    end

    def translate_to(encoding)
      translate(encoding).join(" ")
    end

    Arpabet::ARPA_MAP.first[1].keys.each do |encoding|
      define_method("to_#{encoding}") do
        translate_to(encoding)
      end
    end
  end
end
