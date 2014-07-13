class Village < ActiveRecord::Base
  attr_accessible :chief
  
  has_many :building, dependent: :destroy
end
