class BuildingsController < ApplicationController
  def index
    @upgrading = Building.upgrading
    @upgradable = Building.upgradable
    @maxed = Building.maxed
  end

  def upgrade
    building = Building.find(params[:id])
    building.start_upgrade
    redirect_to action: :index
  end

  def cancel_upgrade
    building = Building.find(params[:id])
    building.cancel_upgrade
    redirect_to action: :index
  end

  def complete_upgrade
    building = Building.find(params[:id])
    building.complete_upgrade
    redirect_to action: :index
  end
end
