require 'player'

describe Player do
it 'gives the correct name' do
player = Player.new("kenny")
expect(player.name).to eq "kenny"
end

end