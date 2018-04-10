require 'rails_helper'

RSpec.describe Lead, type: :model do

  it "creates an admin" do
    admin = build(:admin)
    # p admin    
  end

  # it "creates a daily progress log" do
  #   admin = build(:admin)
  #   lead = build(:lead)
  #   p admin.record_progress(lead)
  #   p admin
  #   expect(admin.record_progress(lead)).to eql(true)
  # end

  it "updates a daily progress log" do
    admin = build(:admin)
    lead = build(:lead)
    daily_progress_log = build(:daily_progress_log)
    expect(admin.record_progress(lead)).to eql(true)
  end
end