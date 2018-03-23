FactoryBot.define do
  
  factory :admin do
    email 'test@test.com'
  end

  factory :lead do

  end

  factory :event do
    name 'test'
    lead_id 1
  end

  factory :outreach do

  end

  factory :setting do

  end


end