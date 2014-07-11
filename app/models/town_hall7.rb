class TownHall7 < TownHall
  def complete_upgrade
    DarkElixirDrill.create
    GoldStorage.create
    ElixirStorage.create
    DarkBarracks.create
    ArcherTower.create
    AirDefense.create
    WizardTower.create
    GiantBomb.create
    AirBomb.create
    AirBomb.create
    SeekingAirMine.create
    HiddenTesla.create

    Building.update_all_for_th_level(8)

    self.type = "TownHall8"
    super
  end
end
