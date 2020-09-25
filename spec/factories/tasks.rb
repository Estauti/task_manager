FactoryBot.define do
  factory :task do
    title { FFaker::Lorem.phrase }
    description { FFaker::Lorem.paragraph }
    priority { 1 }
    status { 1 }
    due_date { DateTime.now }
  end
end
