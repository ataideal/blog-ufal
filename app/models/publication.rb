class Publication < ApplicationRecord
  #Tags
  acts_as_taggable

  #Kaminari
  paginates_per 9

  #Associations
  belongs_to :category
  belongs_to :user

  #Validates
  validates :title, :description, :content, presence: true

  #Scopes
  scope :search, ->(q) {where("lower(title) LIKE ? OR description LIKE ?", "%#{q.downcase}%", "%#{q.downcase}%")}

end
