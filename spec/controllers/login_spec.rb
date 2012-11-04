require 'spec_helper'

describe HomeController do
  before :all do
    FactoryGirl.define do
      factory :user do
      end
    end
  end
  describe 'Login to site' do
    it "invokes the #login method passing user and password" do
      User.should_receive(:login).with('mario.minutolo@gmail.com','foobar')
      post :login ,{:user_name=>"mario.minutolo@gmail.com",:password=>'foobar'}
    end
    context 'Valid user' do
      before :each do
        @logged_in_user = FactoryGirl.create(:user,:account_name=>'mario.minutolo@gmail.com',:password=>'foobar')
      end
      it "sets the user on the session" do
        post :login ,{:user_name=>"mario.minutolo@gmail.com",:password=>'foobar'}
        session[:user].should eq( @logged_in_user) 
        response.should redirect_to(root_path)
      end
    end
    context 'Invalid user' do
      it "send an alert message" do
        post :login ,{:user_name=>"xxxx",:password=>'xxxxxx'}
        session[:user].should be_nil
        response.should_not redirect_to(root_path)
      end
    end
  end
end
