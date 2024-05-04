# frozen_string_literal: true

require 'spec_helper'
require_relative '../rules'

describe Rules do
  subject(:rules) { described_class.display }

  describe '.print_rules' do
    it 'prints the rules of the game' do
      expect(rules).to include('Player is given 12 attempts to guess the code that computer generated at random')
      expect(rules).to include('After every attempt player gets a hint:')
    end
  end
end
