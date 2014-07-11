class TownHall8 < TownHall
  def complete_upgrade
    DarkElixirDrill.rb
    GoldStorage.create
    ElixirStorage.create
    ArcherTower.create
    AirDefense.create
    WizardTower.create
    GiantBomb.create
    SeekingAirMine.create
    SeekingAirMine.create
    HiddenTesla.create
    XBow.create
    XBow.create
    ArcherQueen.create

    Building.update_all_for_th_level(9)

    self.type = "TownHall9"
    super
  end
end
