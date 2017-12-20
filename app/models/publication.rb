class Publication < ApplicationRecord
  acts_as_taggable
  paginates_per 9
  belongs_to :category
  belongs_to :user
  validates :title, :description, :content, presence: true

end
