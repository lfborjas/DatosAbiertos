require 'spec_helper'

describe FeedsController do
  describe "GET 'index'" do
    it "returns the existing feeds" do
      existing_feeds = 2.times.collect{ FactoryGirl.create(:feed) }  
      get 'index'
      assigns(:feeds).should eq existing_feeds
    end
  end
end
