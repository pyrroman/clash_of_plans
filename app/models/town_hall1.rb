class TownHall1 < TownHall
  def complete_upgrade
    GoldMine.create
    ElixirCollector.create
    Barracks.create
    ArcherTower.create

    Building.update_all_for_th_level(2)

    self.type = "TownHall2"
    super
  end
end
