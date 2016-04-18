module Arpabet
  class Token
    attr_reader :token

    def initialize(token)
      @token = token
    end

    def phoneme
      # remove the emphasis
      split[0].gsub(/(\W|\d)/, "")
    end

    Arpabet::ARPA_MAP.first[1].keys.each do |encoding|
      define_method(encoding) do
        token_map = Arpabet::ARPA_MAP[phoneme]
        token_map && token_map[encoding]
      end
    end

    def stress
      Arpabet::STRESS_MAP[@token[-1].to_i]
    end

    def position
      JSON.parse(Arpabet::POSITION_MAP)[split[1]]
    end

    def split
      @token.split("_")
    end
  end
end
