require 'game'

describe Game do
  let(:player2) {Player.new("kenny")}
#   let(:player2) { double(:player_instance) }
    it 'attacks the other player' do
        # allow(player2).to receive(:decrease_hp).and_return()
        subject.attack(player2)
        expect(player2.hp).to eq 90
    end

end