class AddChallengeRefToConfessions < ActiveRecord::Migration[7.0]
  def change
    add_reference :confessions, :challenge, null: true, foreign_key: true, optional: true
  end
end
