require_relative './player.rb'

class Game

  def initialize name1, name2
    @player1 = Player.new name1
    @player2 = Player.new name2
  end

  def attack_to
    @player2.reduce_hp
    self
  end
  
  def describe
    { player1: @player1.name, player2: @player2.name, hp1: @player1.hit_points, hp2: @player2.hit_points }
  end
end
