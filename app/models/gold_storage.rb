class GoldStorage < Building
  MAX_FOR_LEVEL = { 1 => 1, 2 => 3, 3 => 6, 4 => 8, 5 => 9, 6 => 10, 7 => 11, 8 => 11, 9 => 11, 10 => 11 }

  def name
    "Gold Storage"
  end

  def ultimate_level
    11
  end
end
