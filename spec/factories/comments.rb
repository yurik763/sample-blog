FactoryBot.define do
  factory :comment do
    author { "Mike" }
    sequence(:body) { |n| "comment body #{n}" }
  end
end