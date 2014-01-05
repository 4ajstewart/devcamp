require 'spec_helper'

describe Talk do
  before(:each) do
    @attr = {
      :name => "Better apps with Rails",
      :description => "Howto create an app with ROR"
    }
  end

  it "should create a talk given a valid attribute" do
    Talk.create!(@attr)
  end

  it "should require an name" do
    no_name_talk = Talk.new(@attr.merge(:name => ""))
    no_name_talk.should_not be_valid
  end

  it "should reject duplicate name" do
    Talk.create!(@attr)
    talk_with_duplicate_name = Talk.new(@attr)
    talk_with_duplicate_name.should_not be_valid
  end
end
