class TownHall4 < TownHall
  def complete_upgrade
    GoldMine.create
    ElixirCollector.create
    ArmyCamp.create
    SpellFactory.create
    Cannon.create
    ArcherTower.create
    Bomb.create
    Bomb.create
    WizardTower.create
    AirBomb.create
    AirBomb.create

    Building.update_all_for_th_level(5)

    self.type = "TownHall5"
    super
  end
end
