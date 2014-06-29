class BuildingsController < ApplicationController
  def index
    @upgrading = Building.upgrading
  end
end
