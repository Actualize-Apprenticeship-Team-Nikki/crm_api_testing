require 'rails_helper'

RSpec.describe Admin, type: :model do



  # it "is valid with a id, email, password" do
  #   admin = Admin.new(
  #     id: 1,
  #     email: "test@test.com",
  #     password: "password",
  #     )
  #   p admin
  #   expect(admin).to be_valid
  # end

  # it "is invalid without a id" do
  #   admin = Admin.new(id: nil)
  #   admin.valid?
  #   expect(admin.errors[:id]).to_not include("can't be blank")
  # end

  # it "is invalid without a email"
  # it "is invalid without a password"







  it "creates an admin" do
    admin = build(:admin)
    expect(admin).to be_valid
    p admin
  end

  # it "creates a daily progress log" do
  #   admin = build(:admin)
  #   lead = build(:lead)
  #   p admin.record_progress(lead)
  #   p admin
  #   p lead 
  #   expect(admin.record_progress(lead)).to eql(true)
  # end

  # it "updates a daily progress log" do
  #   admin = build(:admin)
  #   lead = build(:lead)
  #   daily_progress_log = build(:daily_progress_log)
  #   expect(admin.record_progress(lead)).to eql(true)
  # end
end