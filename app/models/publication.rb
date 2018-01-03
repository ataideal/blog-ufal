class Publication < ApplicationRecord
  #Tags
  acts_as_taggable

  #Kaminari
  paginates_per 9

  #Associations
  belongs_to :category
  belongs_to :user

  #Validates
  validates :picture, :title, :description, :content, presence: true

  #Scopes
  scope :search, ->(q) {where("lower(title) LIKE ? OR description LIKE ?", "%#{q.downcase}%", "%#{q.downcase}%")}

  #Paperclip
  has_attached_file :picture, styles: { medium: "500x333>", thumb: "268x179" }, default_url: "/images/no-image.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

end
