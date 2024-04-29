class AddStatusToConfessionsAndComments < ActiveRecord::Migration[7.0]
  def change
    add_column :confessions, :status, :integer, default: 0
    add_column :comments, :status, :integer, default: 0

    add_index :confessions, :status
    add_index :comments, :status
  end
end
