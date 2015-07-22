class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :location
      t.string :description
      t.integer :rating

      t.timestamps null: false
    end
  end
end
