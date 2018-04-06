describe Game do
  subject(:game) { described_class.new }
  
  before(:each) do
    @player = instance_double('Player')
  end

  describe '#attack_to' do
    it 'sends #reduce_hp to player' do
      expect(@player).to receive(:reduce_hp)
      subject.attack_to @player
    end
  end
end 
