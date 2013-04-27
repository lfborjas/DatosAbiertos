require 'spec_helper'

describe FeedDecorator do
  let(:feed){ FactoryGirl.create(:feed, name: "dinosaurs") }
  let(:decorated_feed){ feed.decorate }

  describe "#name" do
    it "should return a titleized version of the name" do
      decorated_feed.name.should eq "Dinosaurs"
    end
  end
end
