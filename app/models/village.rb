class Village < ActiveRecord::Base
  belongs_to :user
  has_many :building, dependent: :destroy
end
