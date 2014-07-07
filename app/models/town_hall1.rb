class TownHall1 < Building
  def complete_upgrade
    GoldMine.create th_max_level: 2
    ElixirCollector.create th_max_level: 2
    Barracks.create th_max_level: 3
    ArcherTower.create th_max_level: 2
    self.type = "TownHall2"
    self.th_max_level = 3
    super
  end
end
