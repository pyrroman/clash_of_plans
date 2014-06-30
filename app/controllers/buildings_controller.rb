class BuildingsController < ApplicationController
  def index
    @upgrading = Building.upgrading
    @upgradable = Building.upgradable
  end
end
