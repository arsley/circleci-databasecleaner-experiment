FactoryBot.define do
  factory :book do
    name { Faker::Book.title }
    description { Faker::Lorem.sentence }

    # belongs_to
    author { Author.all.sample }
  end
end
