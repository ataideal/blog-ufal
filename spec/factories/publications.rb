FactoryBot.define do
  factory :publication do
    title {Faker::Book.title}
    description {Faker::Lorem.paragraph}
    association :category,factory: :category
    association :user,factory: :user
    tag_list {Faker::DragonBall.character}
  end
end
