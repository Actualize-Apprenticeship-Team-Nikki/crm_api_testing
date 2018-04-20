require 'rails_helper'

RSpec.describe Admin, type: :model do

  describe "validations" do

    it "is valid with a id, email, password" do
      admin = build(:admin)
      expect(admin).to be_valid
    end

    it "is invalid without a email" do
      admin = build(:admin, email: nil)
      admin.valid?
      expect(admin.errors[:email]).to include("can't be blank")
    end

    it "is invalid without a password" do
      admin = build(:admin, password: nil)
      admin.valid?
      expect(admin.errors[:password]).to include("can't be blank")
    end


    it "creates an admin" do
      admin = build(:admin)
      expect(admin).to be_valid
    end

  end

  describe "#record_progress" do

    context "when a daily progress log exists" do

      it "increments the processed attribute by 1" do
        admin = create(:admin)
        lead = build(:lead)
        log = create(:daily_progress_log, admin: admin, processed: 0)
        admin.record_progress(lead)
        log.reload
        expect(log.processed).to eq(1)
      end

      context "when lead.connected is truthy" do

        it "increments the connects attribute by 1" do
          admin = create(:admin)
          lead = build(:lead, connected: true)
          log = create(:daily_progress_log, admin: admin)
          admin.record_progress(lead)
          log.reload
          expect(log.connects).to eq(1)
        end

      end

      context "when lead.connected is falsey" do

        it "does not increment the connects attribute by 1" do
          admin = create(:admin)
          lead = build(:lead)
          log = create(:daily_progress_log, admin: admin)
          admin.record_progress(lead)
          log.reload
          expect(log.connects).to eq(0)
        end

      end

      context "when lead.appointment_date is a valid datetime" do

        it "increments the sets attribute by 1" do
          admin = create(:admin)
          lead = build(:lead, appointment_date: "2018-03-20 05:00:00")
          log = create(:daily_progress_log, admin: admin)
          admin.record_progress(lead)
          log.reload
          expect(log.sets).to eq(1)
        end

      end

      context "when lead.appointment_date is not a valid datetime" do

        it "does not increment the sets attribute" do
          admin = create(:admin)
          lead = build(:lead, appointment_date: nil)
          log = create(:daily_progress_log, admin: admin)
          admin.record_progress(lead)
          log.reload
          expect(log.sets).to eq(0)
        end

      end

    end

    context "when a daily progress log doesn't exist" do
    end




  end 

  # it "creates a daily progress log if one doesn't exist" do
  #   admin = build(:admin)
  #   lead = build(:lead)
  #   p lead
  #   # log = build(:daily_progress_log)
  #   expect(Admin.record_progress(lead)).to be_valid
  #   p lead
  # end

  # it "updates a daily progress log" do
  #   admin = build(:admin)
  #   lead = build(:lead)
  #   daily_progress_log = build(:daily_progress_log)
  #   expect(admin.record_progress(lead)).to eql(true)
  # end
end