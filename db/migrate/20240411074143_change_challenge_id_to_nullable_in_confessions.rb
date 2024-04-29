class ChangeChallengeIdToNullableInConfessions < ActiveRecord::Migration[7.0]
  def change
    change_column :confessions, :challenge_id, :bigint, null: true
  end
end
