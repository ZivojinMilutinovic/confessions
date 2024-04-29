class Challenge < ApplicationRecord
  has_many :confessions
  enum status: { in_progress: 0, completed: 1 }

  def status
    super.try(:titleize)
  end
end
