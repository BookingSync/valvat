require 'spec_helper'

describe Valvat::Checksum::EE do
  %w(EE101234568 EE100207415).each do |valid_vat|
    it "returns true on valid VAT #{valid_vat}" do
      expect(Valvat::Checksum.validate(valid_vat)).to be true
    end

    invalid_vat = "#{valid_vat[0..-3]}#{valid_vat[-1]}#{valid_vat[-2]}"

    it "returns false on invalid VAT #{invalid_vat}" do
      expect(Valvat::Checksum.validate(invalid_vat)).to be false
    end
  end
end
