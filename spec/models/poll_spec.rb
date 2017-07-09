require 'rails_helper'

RSpec.describe Poll, type: :model do
  test_poll = FactoryGirl.create(:poll)


  describe "attributes" do
    it "has vote and user attributes" do
      expect(:test_poll).to have_attributes(vote: 1)
    end
  end
end
