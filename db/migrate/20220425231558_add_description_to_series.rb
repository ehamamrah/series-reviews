class AddDescriptionToSeries < ActiveRecord::Migration[7.0]
  def change
    add_column :series, :description, :text
  end
end
