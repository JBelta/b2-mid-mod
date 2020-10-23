class CreateAmusmentParks < ActiveRecord::Migration[5.2]
  def change
    create_table :amusment_parks do |t|
      t.string :park_name
      t.integer :price
    end
  end
end
