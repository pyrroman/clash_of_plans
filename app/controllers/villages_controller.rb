class VillagesController < ApplicationController
  def my_village
    @village = current_user.villages.first
  end
end
