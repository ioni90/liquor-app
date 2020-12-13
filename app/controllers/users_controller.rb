class UsersController < ApplicationController

  def edit
    @nickname = current_user.nickname
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:introduction, :gender_id, :age_id,
                                 :prefecture_id, :region_id, :favorite_id)
  end

end
