require 'rails_helper'

RSpec.describe WelcomeMailer, :type => :mailer do
  describe "test welcome_email method" do
    let(:lead) { build(:lead)}
    let(:mail) { WelcomeMailer.welcome_email(lead) }

    it 'should have a valid lead' do
      expect(lead).to be_valid
    end 

    it "sends a welcome email to the lead's email address" do
      expect(mail.to).to eql(['jdoe@email.com'])
    end

    it "should return empty array, email = nil" do
      lead = build(:lead, email:  nil)
      mail = WelcomeMailer.welcome_email(lead)
      expect(mail.to).to eql([])
    end

    it "sends from the admissions email address" do
      expect(mail.from).to eq(['admissions@actualize.co'])
    end

    it 'sends with the correct subject' do
      expect(mail.subject).to eql('Welcome to Actualize!')
    end

    it 'sends correct attachment' do
      expect(mail.attachments[0].filename).to include('welcome-email-image.jpg')
    end

  end

end
