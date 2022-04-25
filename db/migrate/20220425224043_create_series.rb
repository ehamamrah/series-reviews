class CreateSeries < ActiveRecord::Migration[7.0]
  def change
    create_table :series do |t|
      t.string :title
      t.string :genre
      t.integer :seasons
      t.date :first_release
      t.string :director
      t.string :shoot_location
      t.string :country

      t.timestamps
    end
  end
end
