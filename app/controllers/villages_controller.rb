class VillagesController < ApplicationController
  def my_village
#    @village = current_user.villages.first
    @village = Village.first
  end
end
