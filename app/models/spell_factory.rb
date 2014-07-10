class Cannon < Building
  MAX_FOR_LEVEL = { 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 1, 6 => 2, 7 => 3, 8 => 3, 9 => 4, 10 => 5 }

  def name
    "Spell Factory"
  end

  def ultimate_level
    5
  end
end
