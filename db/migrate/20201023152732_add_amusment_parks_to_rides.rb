class AddAmusmentParksToRides < ActiveRecord::Migration[5.2]
  def change
    add_reference :rides, :amusment_park, foreign_key: true
  end
end
