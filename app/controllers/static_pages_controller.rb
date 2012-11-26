class StaticPagesController < ApplicationController
  def home
  	@user = current_user
  	@role = Role.find(1)
  end

  def about
  end
end
