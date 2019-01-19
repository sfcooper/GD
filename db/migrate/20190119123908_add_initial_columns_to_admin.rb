class AddInitialColumnsToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :sign_in_count, :integer, default: 0, null: false
    add_column :admins, :current_sign_in_at, :datetime
    add_column :admins, :last_sign_in_at, :datetime
    add_column :admins, :current_sign_in_ip, :inet
    add_column :admins, :last_sign_in_ip, :inet
    add_column :admins, :confirmation_token, :string
    add_column :admins, :confirmed_at, :datetime
    add_column :admins, :confirmation_sent_at, :datetime
    add_column :admins, :unconfirmed_email, :string
    add_column :admins, :failed_attempts, :integer, default: 0, null: false
    add_column :admins, :unlock_token, :string
    add_column :admins, :locked_at, :datetime
  
    add_index :admins, :confirmation_token,   unique: true
    add_index :admins, :unlock_token,         unique: true
  end
end
