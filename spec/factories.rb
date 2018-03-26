FactoryBot.define do
  
  factory :admin do
    email 'test@test.com'
  end

  factory :lead do
    first_name 'John'
    last_name 'Doe'
    email 'jdoe@email.com'
  end

  factory :event do
    name 'test'
    lead_id 1
  end

  factory :outreach do
    lead_id 1
    text "some text"
  end

  factory :setting do
    admin_id 1
    auto_text_content "More text"
  end


end