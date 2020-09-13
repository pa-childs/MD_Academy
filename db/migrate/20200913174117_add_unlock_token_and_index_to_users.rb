class AddUnlockTokenAndIndexToUsers < ActiveRecord::Migration[6.0]
  def change

    # frozen_string_literal: true

    add_column :users, :unlock_token, :string # Only if unlock strategy is :email or :both
    add_index :users, :unlock_token, unique: true
  end
end
