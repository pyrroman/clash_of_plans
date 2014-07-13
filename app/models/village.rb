class Village < ActiveRecord::Base
  has_many :building, dependent: :destroy
end
