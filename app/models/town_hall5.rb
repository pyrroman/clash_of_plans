class TownHall5 < TownHall
  def complete_upgrade
    GoldMine.create
    ElixirCollector.create
    Mortar.create
    WizardTower.create
    GiantBomb.create

    Building.update_all_for_th_level(6)

    self.type = "TownHall6"
    super
  end
end
