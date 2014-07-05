class BuildingsController < ApplicationController
  def index
    @upgrading = Building.upgrading
    @upgradable = Building.upgradable
  end
  def upgrade
    building = Building.find(params[:id])
    building.start_upgrade
    redirect_to action: :index
  end
end
