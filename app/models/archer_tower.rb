class ArcherTower < Building
  MAX_FOR_LEVEL = { 1 => 0, 2 => 2, 3 => 3, 4 => 4, 5 => 6, 6 => 7, 7 => 8, 8 => 10, 9 => 11, 10 => 12 }

  def name
    "Archer Tower"
  end

  def ultimate_level
    12
  end
end
