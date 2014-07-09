class ArcherTower < Building
  def name
    "Archer Tower"
  end

  def ultimate_level
    12
  end

  MAX_FOR_LEVEL = { 1: 0, 2: 2, 3: 3, 4: 4, 5: 6, 7: 8, 8: 10, 9: 11, 10: 12 }

  def update_for_th_level(level)
    update_attribute(th_max_level: MAX_FOR_LEVEL[level])
  end
end
