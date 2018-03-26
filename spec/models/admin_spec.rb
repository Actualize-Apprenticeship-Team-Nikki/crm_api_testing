require 'rails_helper'

RSpec.describe Lead, type: :model do

  it "creates an admin" do
    admin = build(:admin)
    p admin    
  end

end