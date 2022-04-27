require 'csv'    

namespace :data_importer do
  desc "To import Data from provided CSV file"
  task import: :environment do
    ActiveRecord::Base.transaction do
      series_file = File.join(Rails.root, 'tv_series.csv')
      import_series(series_file)
      reviews_file = File.join(Rails.root, 'reviews.csv')
      import_reviews(reviews_file)
    end
  end

  def import_series(file)
    CSV.foreach(file, headers: true) do |row|
      title = row['TV Series']
      series = Series.find_or_initialize_by(title: title)
      if series.new_record?
        series = Series.new(
          title: title,
          genre: row['Genre'],
          seasons: row['No of seasons'],
          first_release: row['Date of First Release'],
          director: row['Director'],
          country: row['Country'],
          description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
        )
        series.save
      end

      # Saving Actors
      actor = Actor.find_or_initialize_by(name: row['Actor'], series: series)
      actor.save if actor.new_record?

      # Saving Shooting Locations
      location = ShootLocation.find_or_initialize_by(name: row['Shoot location'], series: series)
      location.save if location.new_record?
    end
  end

  def import_reviews(file)
    CSV.foreach(file, headers: true) do |row|
      series_title = row['TV Series']
      review_user = row['User']
      series = Series.find_by(title: series_title)
      review = Review.find_or_initialize_by(user: review_user, series: series)
      if review.new_record?
        review = Review.new(
          series_id: series.id,
          description: row['Review'],
          stars: row['Stars'],
          user: review_user
        )
        review.save
      end
    end
  end
end