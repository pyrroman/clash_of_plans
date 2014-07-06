class TownHall0 < Building
  def complete_upgrade
    Building.create name: "Gold Mine", level: 0, th_max_level: 2, ultimate_level: 11
    Building.create name: "Elixir Collector", level: 0, th_max_level: 2, ultimate_level: 11
    Building.create name: "Gold Storage", level: 0, th_max_level: 1, ultimate_level: 11
    Building.create name: "Elixir Storage", level: 0, th_max_level: 1, ultimate_level: 11
    Building.create name: "Barracks", level: 0, th_max_level: 3, ultimate_level: 10
    Building.create name: "Army Camp", level: 0, th_max_level: 1, ultimate_level: 8
    Building.create name: "Cannon", level: 0, th_max_level: 2, ultimate_level: 12
    self.type = "TownHall1"
    self.th_max_level = 2
    super
  end
end
