require 'rails_helper'

RSpec.describe CalendarInvitesMailer, :type => :mailer do

  let(:lead) { build(:lead) }
  let(:mail) { CalendarInvitesMailer.appointment(lead)}

  describe "lead validations" do
    it "is a valid lead" do 
      expect(lead).to be_valid
    end

    it "has a valid first name" do 
      expect(lead.first_name).not_to be_empty
    end

    it "has a valid advisor" do 
      expect(lead.advisor).not_to be_empty
    end

  end

  describe "appointment" do

    it "sends a calendar invite email to the lead's email address" do
      expect(mail.to).to eq [lead.email]
    end

    it "sends from the advisor email address" do 
      expect(mail.from).to eq ["#{lead.advisor.downcase}@actualize.co"]
    end 

    it 'adds the .ics as an attachment' do
      expect(mail.attachments[0].filename).to include('event.ics')
    end

    it 'sends with the correct subject' do
      expect(mail.subject).to eq "ACTUALIZE #{lead.location}: Meeting - #{lead.first_name} <> #{lead.advisor}"
    end
  end

  # describe "test appointment method" do
  #   let(:lead) { build(:lead) }
  #   let(:mail) { CalendarInvitesMailer.appointment(lead)}

  #   it 'should have a valid lead' do
  #     expect(lead).to be_valid
  #   end
  #   it 'should have a advisor infomation' do
  #     expect(lead.advisor).to eql("Nick")
  #   end
  #   it 'sends correct attachment' do
  #     expect(mail.attachments['event.ics']).to be_valid
  #   end
  # end

  # describe Icalendar::Calendar do
  #   describe '#publish' do
  #     let(:lead) { build(:lead) }
  #     let(:mail) { CalendarInvitesMailer.appointment(lead)}
    
  #     it 'sets ip_method to "PUBLISH"' do
  #       mail.publish
  #       expect(mail.ip_method).to eq 'PUBLISH'
  #     end
  #   end
  # end

  # describe Icalendar::Event do
  #   describe '#dtstart' do
  #     let(:lead) { build(:lead) }
  #     let(:mail) { CalendarInvitesMailer.appointment(lead)}
  #   end
  # end
end

 
