require 'spec_helper'

describe 'temperature conversion functions' do

  describe "#ftoc" do

    it 'converts freezing temperature' do
      expect(ftoc(32)).to eq(0)
    end

    it 'converts boiling temperature' do
      expect(ftoc(212)).to eq(100)
    end

    it 'converts body temperature' do
      expect(ftoc(98.6)).to eq(37)
    end

    it 'converts arbitrary temperature' do
      expect(ftoc(68)).to eq(20)
    end
  end
end
