class Category < ApplicationRecord
  has_many :confession_categories
  has_many :confessions, through: :confession_categories
end
