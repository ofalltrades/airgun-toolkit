class UsersController < ApplicationController
  before_action :user, except: :index

  def index
    render json: UserPresenter.as_json(User.all, params[:desired_fields]),
           status: :ok
    end
  end

  def show
  end

  private

  def gun_params
    params.require(:data).permit(
      :id
    )
  end

  def user
    @user ||= User.find params[:id]
  end
end
