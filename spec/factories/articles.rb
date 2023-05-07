FactoryBot.define do
  factory :article do
    title { 'title' }
    content { 'content' }
    created_at { Time.now }
    updated_at { Time.now }
  end
end
