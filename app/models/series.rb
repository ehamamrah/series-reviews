class Series < ApplicationRecord
    has_many :shoot_locations, dependent: :destroy
    has_many :actors, dependent: :destroy
    has_many :reviews, dependent: :destroy

    validates_presence_of :title, :genre, :seasons, :first_release, :director, :country

    def over_all_rating
        self.reviews.average(:stars).to_f
    end
end
