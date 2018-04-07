require_relative './player.rb'

class Game

  attr_reader :winner

  def initialize name1, name2
    @player1 = Player.new name1
    @player2 = Player.new name2
    @attacker, @attacked = @player1, @player2
    @message = ''
    @winner = ''
    @@game = self
  end

  def Game.get_game
    @@game
  end

  def attack_to
    (@winner = @attacker.name) && return if winner?
    @message = "#{@attacker.name} attacked!"
    switch_players
    0
  end
  
  def describe
    { player1: @player1.name, player2: @player2.name, hp1: @player1.hit_points, hp2: @player2.hit_points, message: @message }
  end

private
  def switch_players
    @attacker, @attacked = @attacked, @attacker
  end

  def winner?
    @attacked.reduce_hp.hit_points <= 0
  end
end
