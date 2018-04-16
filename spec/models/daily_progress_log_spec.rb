require 'rails_helper'

RSpec.describe DailyProgressLog, type: :model do

  it "should belong to admin" do
    t = DailyProgressLog.reflect_on_association(:admin)
    expect(t.macro).to eq(:belongs_to)
  end

end