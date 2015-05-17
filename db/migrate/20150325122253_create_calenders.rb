class CreateCalenders < ActiveRecord::Migration
  def change
    create_table :calenders do |t|
      t.date :cal_date
      t.integer :cal_no_tiffin, :default=>1
      t.integer :rate
      t.boolean :time
     
      t.integer :member_id
      t.integer :messowner_id

      t.timestamps null: false
    end
  end
end
