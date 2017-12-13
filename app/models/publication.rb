class Publication < ApplicationRecord
  acts_as_taggable

  belongs_to :category
  belongs_to :user

end
