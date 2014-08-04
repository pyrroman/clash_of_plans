class VillagesController < ApplicationController
  def my_village
    if current_user.villages.empty?
      current_user.villages << Village.first
    end

    @village = current_user.villages.first
  end
end
