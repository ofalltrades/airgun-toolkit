class UsersController < ApplicationController
  before_action :user, except: :index

  def index
    respond_to do |format|
      format.html
      format.json { @users = User.all }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json
    end
  end

  private

  def gun_params
    params.require(:data).permit(
      :id
    )
  end

  def user
    @user ||= User.fine params[:id]
  end
end
