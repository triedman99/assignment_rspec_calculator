require 'calculator.rb'

describe Calculator do

  let(:c) {Calculator.new}

  describe '#add' do
    it 'returns the sum of its arguments' do
      expect(c.add(1, 2)).to eq(3)
    end
  end

  describe '#subtract' do
    it 'returns the remainder of its arguments' do
      expect(c.subtract(1, 2)).to eq(-1)
    end
  end

  describe '#multiply' do
    it 'returns the total of its arguments' do
      expect(c.multiply(2, 3)).to eq(6)
    end
  end

  describe '#divide' do
    it 'returns the floating remainder of its arguments' do
      expect(c.divide(2, 3)).to eq(0.6666666666666666)
    end

    it 'returns the remainder of its arguments' do
      expect(c.divide(4, 2)).to eq(2)
    end
  end

  describe '#pow' do
    it 'returns the floating exponent of its arguments' do
      expect(c.pow(3, 3)).to eq(27.0)
    end

    it 'returns the remainder of its arguments' do
      expect(c.pow(27, 1/3.0)).to eq(3.0)
    end
  end

  describe '#sqrt' do
    it 'returns the square root of its arguments' do
      expect(c.sqrt(9)).to eq(3)
    end

    it 'returns the floating square root of its arguments' do
      expect(c.sqrt(8)).to eq(2.83)
    end
  end

  describe '#memory' do
    it 'returns nil when not assigned' do
      expect(c.memory).to be nil
    end

    it 'returns the assigned value' do
      expect(c.memory=(8)).to eq(8)
    end

    it 'remembers the value' do
      c.memory=(8)
      expect(c.memory).to eq(8)
    end
  end

  let (:c2) {Calculator.new(true)}

  describe '#string' do
    it 'returns a string' do
      expect(c2.add(1, 2)).to eq('3')
    end
  end

end