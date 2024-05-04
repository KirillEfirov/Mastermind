# frozen_string_literal: true

require 'spec_helper'
require_relative '../computer'

describe Computer do
  subject(:computer) { described_class.instance }

  describe '#generate_code' do
    subject(:code) { computer.generate_code }

    it 'generates random code of size 4' do
      expect(code.size).to eq 4
    end

    it { is_expected.to be_an Array }

    it 'generates random code with numbers only' do
      code.each { |number| expect(number).to be_an Integer }
    end

    it 'generates random code with numbers from 1 to 6' do
      code.each { |number| expect(number).to be_between(1, 6).inclusive }
    end
  end
end
