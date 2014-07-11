class TownHall6 < TownHall
  def complete_upgrade
    DarkElixirStorage.create
    DarkBarracks.create
    Barracks.create
    ArmyCamp.create
    Cannon.create
    Cannon.create
    ArcherTower.create
    Mortar.create
    Bomb.create
    Bomb.create
    AirDefense.create
    GiantBomb.create
    SeekingAirMine.create
    HiddenTesla.create

    Building.update_all_for_th_level(7)

    self.type = "TownHall7"
    super
  end
end
