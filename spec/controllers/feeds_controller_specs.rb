require 'spec_helper'

describe FeedsController do
    
  # This should return the minimal set of attributes required to create a valid
  # Temp. As you add validations to Temp, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TempsController. Be sure to keep this updated too.
  def valid_session
    {}
  end
  
  describe "GET index" do
    it "should return all feeds" do
      feed1 = Feed.create! valid_attributes
      feed2 = Feed.create! valid_attributes
      get :index, {}, valid_session
      assigns(:feeds).should eq([feed1, feed2])
    end
  end
  
  
end
