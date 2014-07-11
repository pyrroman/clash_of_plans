class TownHall3 < TownHall
  def complete_upgrade
    GoldMine.create
    ElixirCollector.create
    Barracks.create
    AirDefense.create

    Building.update_all_for_th_level(4)

    self.type = "TownHall4"
    super
  end
end
