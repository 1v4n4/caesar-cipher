require_relative '../lib/caesar'

RSpec.describe CaesarCipher do
  subject { CaesarCipher.new }

  describe '#caesar_cipher' do
    it 'works with the small positive key' do
      expect(subject.caesar_cipher('What a string!', 5)).to eql 'Bmfy f xywnsl!'
    end

    it 'works with the big positive key' do
      expect(subject.caesar_cipher('What a string!', 31)).to eql 'Bmfy f xywnsl!'
    end

    it 'works with the small negative key' do
      expect(subject.caesar_cipher('Mjqqt, Btwqi!', -5)).to eql 'Hello, World!'
    end

    it 'works with the large negative key' do
      expect(subject.caesar_cipher('Mjqqt, Btwqi!', -31)).to eql 'Hello, World!'
    end

    it 'works with the zero key' do
      expect(subject.caesar_cipher('Hello, World!', 0)).to eql 'Hello, World!'
    end
  end
end
