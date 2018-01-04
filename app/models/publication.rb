class Publication < ApplicationRecord
  acts_as_taggable
  paginates_per 25
  belongs_to :category
  belongs_to :user

end
