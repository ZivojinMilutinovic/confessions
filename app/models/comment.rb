class Comment < ApplicationRecord
  belongs_to :confession
  has_many :responses, class_name: 'Comment', foreign_key: 'parent_comment_id', dependent: :destroy
  belongs_to :parent_comment, class_name: 'Comment', optional: true
  validates :body, presence: true
  enum status: { approved: 0, rejected: 1, pending: 2 }

  after_create :update_confession_number_of_comments
  after_destroy :update_confession_number_of_comments

  def status
    super.try(:titleize)
  end

  private

  def update_confession_number_of_comments
    self.confession.update_number_of_comments
  end
end
