class UsersController < ApplicationController

  # GET /users/1
  # GET /users/1.json
  def show
    #@user = User.find(params[:id])
    puts current_user.id
    puts params[:id]
    @user = User.find(1) #current_user

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

    # GET /users/1/edit
  def edit
    # if current_user.id != params[:id]
    #   flash[:error] = "You can only edit your own profile."
    #   redirect_to :back
    # end
    
    @user = User.find(params[:id])
    #@roles = Role.find(:all)

  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    params[:user][:role_ids] ||= nil
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to user_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end
