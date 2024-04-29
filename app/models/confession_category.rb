class ConfessionCategory < ApplicationRecord
  belongs_to :confession
  belongs_to :category
end
