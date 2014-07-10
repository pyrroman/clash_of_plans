class TownHall < Building
  MAX_FOR_LEVEL = { 1 => 2, 2 => 3, 3 => 4, 4 => 5, 5 => 6, 6 => 7, 7 => 8, 8 => 9, 9 => 10, 10 => 10 }

  def name
    "Town Hall"
  end

  def ultimate_level
    10
  end
end
