# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  firstName  :string(255)
#  lastName   :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do

  it "has a valid factory" do
  	FactoryGirl.create(:user).should be_valid
  end

  it "is invalid without an email" do
  	FactoryGirl.build(:user, email: nil).should_not be_valid
  end

  it "is invalid without a password" do
  	FactoryGirl.build(:user, password: nil).should_not be_valid
  end

  it "is valid without first name" do
  	FactoryGirl.build(:user, firstName: nil).should be_valid
  end

  it "is valid without last name" do
  	FactoryGirl.build(:user, lastName: nil).should be_valid
  end

  it "does not allow passwords less than 6 characters" do
  	FactoryGirl.build(:user, password: "12345").should_not be_valid
  end

  it "does not allow separate users with same email addresses" do
  	FactoryGirl.create(:user, email: "john@smith.com", password: "123456")  	
  	FactoryGirl.build(:user, email: "john@smith.com", password: "123456").should_not be_valid
  end  
  
  it "returns a user's full name as a string" do
  	user = FactoryGirl.create(:user, firstName: "John", lastName: "Smith")
  	user.name.should == "John Smith"
  end
  
  
end
