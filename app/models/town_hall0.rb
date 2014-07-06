class TownHall0 < TownHall
  def complete_upgrade
    GoldMine.create th_max_level: 2
    ElixirCollector.create th_max_level: 2
    GoldStorage.create th_max_level: 1
    ElixirStorage.create th_max_level: 1
    Barracks.create th_max_level: 3
    ArmyCamp.create th_max_level: 1
    Cannon.create th_max_level: 2
    self.type = "TownHall1"
    self.th_max_level = 2
    super
  end
end
