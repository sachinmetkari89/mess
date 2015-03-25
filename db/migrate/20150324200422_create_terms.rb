class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :title
      t.text :term_text
      t.integer :messowner_id

      t.timestamps null: false
    end
  end
end
