class ShootLocation < ApplicationRecord
  belongs_to :series
  validates_presence_of :name, :series
end
