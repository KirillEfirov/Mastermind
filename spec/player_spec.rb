# rubocop:disable Style/FrozenStringLiteralComment

require 'spec_helper'
require_relative '../player'

describe Player do
  subject(:player) { described_class.new }

  describe '#guess' do
    before { allow_any_instance_of(Kernel).to receive(:gets).and_return("1234\n") }

    it 'reads user input and converts it into an array of integers' do
      player.guess

      expect(player.user_code).to eq([1, 2, 3, 4])
    end
  end
end
# rubocop:enable Style/FrozenStringLiteralComment
