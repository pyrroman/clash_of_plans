require 'villages'

class VillagesController < ApplicationController
  def my_village
    @buildings = ClashOfPlans::Villages.my_village
  end
end
