FactoryBot.define do
  factory :publication do
    title {Faker::Book.title}
    description {Faker::Lorem.paragraph}
    content {Faker::Lorem.paragraph(7)}
    association :category,factory: :category
    association :user,factory: :user
    tag_list {Faker::DragonBall.character}
  end
end
