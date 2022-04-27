class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :series, null: false, foreign_key: true
      t.string :user
      t.integer :stars
      t.string :description

      t.timestamps
    end
  end
end
