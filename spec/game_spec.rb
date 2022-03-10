require 'game'

describe Game do
  let(:player1) {Player.new("kenny")}
  let(:player2) {Player.new("abdul")}
  let(:subject) {Game.new(player1, player2)}
#   let(:player2) { double(:player_instance) }
    it 'attacks player 2 on the first turn' do
        # allow(player2).to receive(:decrease_hp).and_return()
        subject.attack
        expect(player2.hp).to eq 90
    end

    it 'attacks player 1 on the second turn' do
        game = Game.new(player1, player2)
        game.attack
        game.attack
        expect(player1.hp).to eq 90
    end
end 