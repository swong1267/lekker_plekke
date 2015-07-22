class AddMustSeeToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :must_see, :boolean
  end
end
