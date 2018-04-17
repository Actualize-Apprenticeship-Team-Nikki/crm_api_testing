FactoryBot.define do

  factory :lead do
    first_name 'John'
    last_name 'Doe'
    email 'jdoe@email.com'
    advisor 'Nick'
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
    email 'test@test.com'
    password 'password'
  end

  factory :setting do
    admin
    auto_text_content "More text"
  end


end
