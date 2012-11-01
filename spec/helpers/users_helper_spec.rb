require 'spec_helper'

describe UsersHelper do

  before { @user = User.new(name: "David Wu",
                            email: "david@marksweep.com",
                            password: "foobar",
                            password_confirmation: "foobar") }
  describe "gravatar generator" do

    it "should generate a correct gravatar for a user" do
      gravatar_for(@user).should == '<img alt="David Wu" class="gravatar" src="https://secure.gravatar.com/avatar/7dca4f3b8bc33fa7cdbd4b95d5509985?s=50" />'
    end

    it "should generate a sized gravatar if an options hash parameter is given" do
      gravatar_for(@user, {size: 20}).should == '<img alt="David Wu" class="gravatar" src="https://secure.gravatar.com/avatar/7dca4f3b8bc33fa7cdbd4b95d5509985?s=20" />'
    end
  end

end
