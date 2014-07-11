class TownHall < Building
  MAX_FOR_LEVEL = { 1 => 2, 2 => 3, 3 => 4, 4 => 5, 5 => 6, 6 => 7, 7 => 8, 8 => 9, 9 => 10, 10 => 10 }

  # All Town Hall levels have the same name
  def name
    "Town Hall"
  end
end
