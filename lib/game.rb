class Game
  def attack_to player
    player.reduce_hp
    self
  end
end
