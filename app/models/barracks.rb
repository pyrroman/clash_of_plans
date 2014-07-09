class Barracks < Building
  MAX_FOR_LEVEL = { 1: 3, 2: 4, 3: 5, 4: 6, 5: 7, 6: 8, 7: 9, 8: 10, 9: 10, 10: 10 }

  def name
    "Barracks"
  end

  def ultimate_level
    10
  end
end
