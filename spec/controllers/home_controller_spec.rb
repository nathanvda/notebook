require 'spec_helper'

describe HomeController do
  include Devise::TestHelpers

  context "when signed in" do
    before (:each) do
      @user = Factory.create(:user)
      sign_in @user
    end

    describe "GET 'index'" do
      it "succeeds" do
        get 'index'
        response.should be_success
      end
    end

    describe "GET 'about'" do
      it "succeeds" do
        get 'about'
        response.should be_success
      end
    end
  end

  context "when not signed in" do
    describe "GET 'index'" do
      it "redirects to sign-in" do
        get 'index'
        response.should redirect_to(new_user_session_path)
      end
    end

    describe "GET 'about'" do
      it "shows the about page" do
        get 'about'
        response.should be_success
      end
    end
  end

end
