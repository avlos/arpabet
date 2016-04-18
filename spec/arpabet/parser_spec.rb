require "spec_helper"
describe Arpabet::Parser do
  describe "#to_unicode" do
    let(:input) { "SIL_S EH0_B L_E EH0_B S_I K_I IY1_E SIL_S" }
    let(:output) { described_class.new(input).to_unicode }
    it "returns the ipa translation" do
      expect(output).to eql("&#603;&#619; &#603;ski")
    end
  end
  describe "#to_ipa" do
    let(:input) { "SIL_S EH0_B L_E EH0_B S_I K_I IY1_E SIL_S" }
    let(:output) { described_class.new(input).to_ipa }
    it "returns the ipa translation" do
      expect(output).to eql("ɛɫ ɛski")
    end
  end
  describe "#tokens" do
    let(:input) { "SIL_S EH0_B L_E EH0_B S_I K_I IY1_E SIL_S" }
    let(:output) { described_class.new(input).tokens }
    it "splits the token into its 2 subcomponents" do
      expect(output.length).to eql(8)
    end
  end
end
