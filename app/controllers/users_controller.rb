class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def show
    @user = User.find(params[:id])
    @motorbikes = @user.motorbikes
  end

  private
  def user_params
    params.require(:user).permit(:phone_number)
  end

end
