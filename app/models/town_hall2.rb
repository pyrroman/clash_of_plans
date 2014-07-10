class TownHall2 < TownHall
  def complete_upgrade
    GoldMine.create
    ElixirCollector.create
    GoldStorage.create
    ElixirStorage.create
    ArmyCamp.create
    Laboratory.create
    ClanCastle.create
    Mortar.create
    Bomb.create

    Building.update_all_for_th_level(3)

    self.type = "TownHall3"
    super
  end
end
