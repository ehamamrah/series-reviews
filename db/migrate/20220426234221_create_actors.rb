class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.references :series, null: false, foreign_key: true

      t.timestamps
    end
  end
end
