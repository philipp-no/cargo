class DriversController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.driver = true
    if @user.update(driver_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def driver_params
    params.require(:user).permit(:car_type, :years_driving, :avatar)
  end
end
