require 'rails_helper'

RSpec.describe Admin, type: :model do



  it "is valid with a id, email, password" do
    admin = Admin.new(
      id: 1,
      email: "test@test.com",
      password: "password",
      )
    p admin
    expect(admin).to be_valid
  end

  it "is invalid without a email" do
    admin = Admin.new(email: nil)
    admin.valid?
    expect(admin.errors[:email]).to include("can't be blank")
  end

  it "is invalid without a password" do
    admin = Admin.new(password: nil)
    admin.valid?
    expect(admin.errors[:password]).to include("can't be blank")
  end


  it "creates an admin" do
    admin = build(:admin)
    expect(admin).to be_valid
    p admin
  end

  # it "is valid with a daily progress log" do
  #   admin = admin.record_progress
  #   admin = build(:admin)
  #   lead = build(:lead)
  #   log = DailyProgressLog.

  #   p log
  #   expect(log).to be_valid
  # end




  # it "creates a daily progress log" do
  #   admin = build(:admin)
  #   log = build(:daily_progress_log)
  #   expect(log).to be_valid
  #   p log
  # end

  # it "updates a daily progress log" do
  #   admin = build(:admin)
  #   lead = build(:lead)
  #   daily_progress_log = build(:daily_progress_log)
  #   expect(admin.record_progress(lead)).to eql(true)
  # end
end