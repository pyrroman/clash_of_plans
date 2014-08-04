class Village < ActiveRecord::Base
  belongs_to :user
  has_many :buildings, dependent: :destroy
end
