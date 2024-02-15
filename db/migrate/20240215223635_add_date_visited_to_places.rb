class AddDateVisitedToPlaces < ActiveRecord::Migration[7.1]
  def change
    add_column :places, :date_visited, :date
  end
end
