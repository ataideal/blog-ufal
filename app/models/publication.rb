class Publication < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :tag
end
