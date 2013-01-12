require 'spec_helper'

describe "Roles Testing:" do
	describe "GET /admin/roles" do
		it "should display all roles to Admin" do
			visit admin_roles_path

			#page.should have_content(["Admin", "Member"].include?)
		end

		it "should NOT display roles to non-admin users" do

		end
	end


end
