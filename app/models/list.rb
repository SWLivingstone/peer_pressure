class List < ApplicationRecord
  has_many :list_items
  belongs_to :user
end
