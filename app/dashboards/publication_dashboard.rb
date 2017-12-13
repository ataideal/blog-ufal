require "administrate/base_dashboard"

class PublicationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    #taggings: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tagging"),
    #base_tags: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tag"),
    #tag_taggings: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tagging"),
    #tags: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tag"),
    category: Field::BelongsTo,
    user: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    description: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    tag_list: Field::String
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :category,
    :user,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    #:taggings,
    #:base_tags,
    #:tag_taggings,
    #:tags,
    :category,
    :user,
    :id,
    :title,
    :description,
    :tag_list,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    #:taggings,
    #:base_tags,
    #:tag_taggings,
    #:tags,
    :tag_list,
    :category,
    :user,
    :title,
    :description,
  ].freeze

  # Overwrite this method to customize how publications are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(publication)
  #   "Publication ##{publication.id}"
  # end
end
