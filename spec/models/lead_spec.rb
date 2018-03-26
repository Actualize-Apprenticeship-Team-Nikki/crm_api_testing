require 'rails_helper'

RSpec.describe Lead, type: :model do

  it "creates a lead" do
    lead = build(:lead)
    p "-" * 40
    p lead
    p "---------------------------------------------"
  end

end
