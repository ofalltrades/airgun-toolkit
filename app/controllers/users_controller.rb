class UsersController < ApplicationController
  before_action :user, except: :index

  def index
    respond_to do |format|
      format.html
      format.json do
        render json: UserPresenter.as_json(User.all, params[:desired_fields]),
               status: :ok
      end
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
