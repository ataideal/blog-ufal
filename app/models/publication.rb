class Publication < ApplicationRecord
  acts_as_taggable
  paginates_per 5
  belongs_to :category
  belongs_to :user

end
