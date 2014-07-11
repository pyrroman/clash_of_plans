class TownHall9 < TownHall
  def complete_upgrade
    GoldMine.create
    ElixirCollector.create
    DarkElixirDrill.create
    Cannon.create
    ArcherTower.create
    GiantBomb.create
    AirBomb.create
    SeekingAirMine.create
    XBow.create
    InfernoTower.create
    InfernoTower.create

    Building.update_all_for_th_level(10)

    self.type = "TownHall10"
    self.th_max_level = 10
    super
  end
end
