require './homework'

describe '#validate' do
  context 'license key length' do
    context 'when > 16 digits' do
      it 'returns false' do
        expect(validate(53082075408853231)).to eq false
      end
    end

    context 'when < 16 digits' do
      it 'returns false' do
        expect(validate(53082075408853)).to eq false
      end
    end
  end

  context 'first two digits of license key' do
    [4169294814153321, 0244403223651176, 1364967124577676, 5036402220169339,
     8539470583285584].each do |key|
      it 'returns false' do
        expect(validate(key)).to eq false
      end
    end
  end

  context 'checksum' do
    [5169294814153321, 5244403223651176, 5364967124577676,
     5436402220169339, 5539470583285584].each do |key|
      it 'returns true' do
        expect(validate(key)).to eq true
      end
    end
  end
end
