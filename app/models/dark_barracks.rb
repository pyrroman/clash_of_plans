class DarkBarracks < Building
  MAX_FOR_LEVEL = { 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0, 7 => 2, 8 => 4, 9 => 5, 10 => 5 }

  def name
    "Dark Barracks"
  end

  def ultimate_level
    5
  end
end
