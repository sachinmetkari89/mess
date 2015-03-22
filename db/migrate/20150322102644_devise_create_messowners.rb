class DeviseCreateMessowners < ActiveRecord::Migration
  def change
    create_table(:messowners) do |t|
      ## Database authenticatable
      t.string :messowner_first_name
      t.string :messowner_last_name
      t.string :messowner_mobile_no
      t.string :messowner_alt_mobile_no
      t.string :messowner_rate_per_month
      t.string :messowner_rate_per_tiffin
      t.string :messowner_time_morning_from
      t.string :messowner_time_morning_to
      t.string :messowner_time_evening_from
      t.string :messowner_time_evening_to
      t.string :messowner_address
      t.string :messowner_tiffin_cancle_time_morning
      t.string :messowner_tiffin_cancle_time_evening
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :messowners, :email,                unique: true
    add_index :messowners, :reset_password_token, unique: true
    # add_index :messowners, :confirmation_token,   unique: true
    # add_index :messowners, :unlock_token,         unique: true
  end
end
