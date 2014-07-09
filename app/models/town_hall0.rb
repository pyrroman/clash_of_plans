class TownHall0 < TownHall
  def complete_upgrade
    GoldMine.create
    ElixirCollector.create
    GoldStorage.create
    ElixirStorage.create
    Barracks.create
    ArmyCamp.create
    Cannon.create

    self.type = "TownHall1"
    super
  end
end
