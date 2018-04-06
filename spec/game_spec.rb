describe Game do
  subject(:game) { described_class.new '', '' }
  
  before(:each) do
    @player1 = instance_double('Player')
    @player2 = instance_double('Player')
    allow(@player1).to receive(:name) { 'Anna' }
    allow(@player1).to receive(:hit_points) { 50 }
    allow(@player2).to receive(:hit_points) { 80 }
    allow(@player2).to receive(:reduce_hp) { self }
    allow(@player2).to receive(:name) { 'Reinis' }
    subject.instance_variable_set(:@player1, @player1)
    subject.instance_variable_set(:@player2, @player2)
  end

  describe '#describe' do
    it 'returns a hash with player info' do
      expect(subject.describe).to eq({ player1: 'Anna', player2: 'Reinis', hp1: 50, hp2: 80, message: ''})
    end
  end
end
