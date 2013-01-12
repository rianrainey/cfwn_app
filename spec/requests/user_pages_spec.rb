require 'spec_helper'

describe "User Pages" do

	subject { page }

	describe "profile page" do
		let(:user) { FactoryGirl.create(:user, :role => "Staff") }
		before { visit user_path(user) }
		puts :user

		it { should have_selector( 'title', text: user.name ) }
		it { should have_selector( "whodey", text: user.name ) }
	end
end