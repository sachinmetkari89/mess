class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :country
      t.string :state
      t.string :district
      t.string :taluka
      t.string :area
      t.string :pincode

      t.timestamps null: false
    end
  end
end
