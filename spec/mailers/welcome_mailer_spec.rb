require 'rails_helper'

RSpec.describe WelcomeMailer, :type => :mailer do
  describe "test welcome_email method" do
    let(:lead) { build(:lead)}
    let(:mail) { WelcomeMailer.welcome_email(lead) }

    it 'renders the subject' do
      expect(mail.subject).to eql('Welcome to Actualize!')
    end

    it "renders the sender email" do
      expect(mail.from).to eq(["admissions@actualize.co"])
    end

    it 'renders the receiver email' do
      expect(mail.to).to eql(['jdoe@email.com'])
    end

  end
end