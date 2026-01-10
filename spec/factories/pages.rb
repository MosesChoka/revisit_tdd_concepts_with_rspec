FactoryBot.define do
  factory :page do
    user { create(:user) }
    sequence(:title) { |n| "MyString #{n}" }
    sequence(:slug) { |n| "my-string-#{n}" }
    sequence(:summary) { |n| "<p>MyText #{n}</p>" }
    sequence(:content) { |n| "<p>MyText #{n}</p>" }
    created_at { Time.zone.now }
    published { false }
  end
  trait :published do
    published { true }
  end
end
