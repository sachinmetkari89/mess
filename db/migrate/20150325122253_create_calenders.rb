class CreateCalenders < ActiveRecord::Migration
  def change
    create_table :calenders do |t|
      t.date :cal_date
      t.integer :cal_no_tiffin
      t.integer :cal_rate
      t.boolean :cal_time
      t.text :cal_old
      t.integer :member_id
      t.integer :messowner_id

      t.timestamps null: false
    end
  end
end
