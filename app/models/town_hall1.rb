class TownHall1 < Building
  def complete_upgrade
    Building.create name: "Gold Mine", level: 0, th_max_level: 2, ultimate_level: 11
    Building.create name: "Elixir Collector", level: 0, th_max_level: 2, ultimate_level: 11
    Building.create name: "Barracks", level: 0, th_max_level: 3, ultimate_level: 10
    Building.create name: "Archer Tower", level: 0, th_max_level: 2, ultimate_level: 12
    self.type = "TownHall2"
    self.th_max_level = 3
    super
  end
end
