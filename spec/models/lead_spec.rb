require 'rails_helper'

RSpec.describe Lead, type: :model do

  it "creates a lead" do
    expect(FactoryBot.build(:lead, first_name: nil)).to be_invalid
    expect(FactoryBot.build(:lead)).to be_valid
  end

end
