require 'rails_helper'

RSpec.describe Lead, type: :model do

  it "creates an event" do
    event = build(:event)
    p event    
  end

end