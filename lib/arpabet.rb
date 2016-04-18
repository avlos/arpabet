require "json"

module Arpabet
  json_rel_path = "../../data/arpabet.min.json"
  json_file = File.expand_path(json_rel_path, __FILE__)
  file_path = File.read(json_file)
  ARPA_MAP = JSON.parse(file_path).freeze
  STRESS_MAP = %w[none primary secondary].freeze
  POSITION_MAP = {
    B: "begining",
    I: "middle",
    E: "end",
    S: "silence"
  }.to_json.freeze
end
require "arpabet/version"
require "arpabet/token"
require "arpabet/phrase"
require "arpabet/parser"
