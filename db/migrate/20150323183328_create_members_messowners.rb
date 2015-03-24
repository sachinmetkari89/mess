class CreateMembersMessowners < ActiveRecord::Migration
  def change
    create_table :members_messowners do |t|
      t.integer :member_id
      t.integer :messowner_id
    end
  end
end
