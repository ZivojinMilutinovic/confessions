class AddStatusToChallenges < ActiveRecord::Migration[7.0]
  def change
    add_column :challenges, :status, :integer, default: 0

    add_index :challenges, :status
  end
end
