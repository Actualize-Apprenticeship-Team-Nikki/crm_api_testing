FactoryBot.define do

  factory :lead do
    id 1
    first_name 'John'
    last_name 'Doe'
    email 'jdoe@email.com'
    connected true
  end

  factory :event do
    lead
    name 'test'
  end

  factory :outreach do
    lead
    text "some text"
  end
  
  factory :admin do
    id 1
    email 'test@test.com'
    password 'password'
  end

  factory :setting do
    admin
    auto_text_content "More text"
  end

  factory :daily_progress_log do
    admin
    id 1 
  end
end
