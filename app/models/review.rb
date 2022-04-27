class Review < ApplicationRecord
  belongs_to :series
  validates_presence_of :series, :user, :stars, :description
end
