class Confession < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :confession_categories, dependent: :destroy
  has_many :categories, through: :confession_categories
  validates :title, presence: true
  validates :body, presence: true
  belongs_to :challenge, optional: true
  enum status: { approved: 0, rejected: 1, pending: 2 }

  def update_number_of_comments
    update_column(:number_of_comments, comments.count)
  end

  def status
    super.try(:titleize)
  end
end
