FactoryBot.define do
  factory :task do
    title { FFaker::Lorem.phrase }
    description { FFaker::Lorem.paragraph }
    priority { Task::PRIORITIES.sample }
    status { Task::STATUSES.sample }
    due_date { DateTime.now }
  end
end
