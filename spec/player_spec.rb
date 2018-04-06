require 'player'

describe Player do

  subject(:player) { described_class.new '' }

  it 'can be initialized with a name that can be accessed' do
    expect(described_class.new('Anna').name).to eq 'Anna'
  end

  it 'has its hit points reduced by 10 by an attack' do
    expect { subject.reduce_hp }.to change { subject.hit_points }.by -10
  end 
end
    
    
