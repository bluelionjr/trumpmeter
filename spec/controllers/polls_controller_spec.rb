require 'rails_helper'

RSpec.describe PollsController, type: :controller do
 user = FactoryGirl.create(:user)
 test_poll = Poll.create!(vote: "approve", user: user)

  describe "GET #new" do
    it "returns http success" do
      sign_in user
      get :new
      expect(response).to have_http_status(:success)
    end

    it "renders the #new view" do
      sign_in user
      get :new
      expect(response).to render_template :new
    end

    it "instantiates @poll" do
      sign_in user
      get :new
      expect(assigns(:poll)).not_to be_nil
    end
  end

  describe "POST create" do
    it "increased the number of Polls by 1" do
      sign_in user
      expect{post :create, poll: {vote: "novote", user_id: user.id}}.to change(Poll, :count).by(1)
    end

    it "assigns the new poll to @poll" do
      sign_in user
      post :create, poll: {vote: "disapprove", user_id: user.id}
      expect(assigns(:poll)).to eq Poll.last
    end

    it "redirects to the new poll" do
      sign_in user
      post :create, poll: {vote: "approve", user_id: user.id}
      expect(response).to redirect_to Poll.last
    end
  end





  # describe "GET #edit" do
  #   it "returns http success" do
  #     sign_in user
  #     get :edit, params: {id: 2}
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
