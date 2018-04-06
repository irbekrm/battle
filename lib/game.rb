require_relative './player.rb'

class Game

  def initialize name1, name2
    @player1 = Player.new name1
    @player2 = Player.new name2
    @attacker = @player1
    @message = ''
  end

  def attack_to
    @attacker.reduce_hp
    @message = "#{@attacker.name} attacked!"
    switch_players
    self
  end
  
  def describe
    { player1: @player1.name, player2: @player2.name, hp1: @player1.hit_points, hp2: @player2.hit_points, message: @message }
  end

private
  def switch_players
    @attacker = @attacker == @player1 ? @player2 : @player1
  end
end
