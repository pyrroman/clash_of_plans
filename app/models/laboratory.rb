class Laborartory < Building
  MAX_FOR_LEVEL = { 1 => 0, 2 => 0, 3 => 1, 4 => 2, 5 => 3, 6 => 4, 7 => 5, 8 => 6, 9 => 7, 10 => 8 }

  def name
    "Laboratory"
  end

  def ultimate_level
    8
  end
end
