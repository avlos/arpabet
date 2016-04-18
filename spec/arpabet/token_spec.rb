require "spec_helper"
describe Arpabet::Token do
  let(:input) { "AA0_B" }
  describe "#phoneme" do
    let(:output) { described_class.new(input).phoneme }
    it "returns the phoneme symbols" do
      expect(output).to eql("AA")
    end
  end
  describe "#stress" do
    let(:output) { described_class.new(input).stress }
    it "returns the stress of the token" do
      expect(output).to eql("none")
    end
  end
  describe "#position" do
    let(:output) { described_class.new(input).position }
    it "returns the position of the token within a word" do
      expect(output).to eql("begining")
    end
  end
  describe "#split" do
    let(:output) { described_class.new(input).split }
    it "splits the token into its 2 subcomponents" do
      expect(output.length).to eql(2)
    end
  end
end
