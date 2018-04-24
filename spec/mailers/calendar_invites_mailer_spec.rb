require 'rails_helper'

RSpec.describe CalendarInvitesMailer, :type => :mailer do

  describe "appointment" do
    let(:lead) { build(:lead) }
    let(:mail) { CalendarInvitesMailer.appointment(lead)}

    it 'prints attachment' do
      p "---------------"
      p mail.attachments
      p "---------------"
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

 
