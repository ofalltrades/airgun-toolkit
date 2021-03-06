require 'pry-remote'
class GunsController < ApplicationController
  before_action :gun, except: [:create, :index]

  def index
    render json: { gun: gun.make }
  end

  def create
    render :create if Gun.new(gun_params).save
    head :internal_server_error
  end

  def update
    gun.update_attributes(gun_params.without(:ballistic_data))

    if gun_params[:ballistic_data]
      gun.ballistic_data.push(BallisticData.new(gun_params.slice(:ballistic_data)))
    end
  end

  private

  def gun_params
    params.require(:data).permit(
      :id,
      :make,
      :model,
      :caliber,
      ballistic_data: [
        :id,
        :muzzle_velocity,
        :muzzle_energy
      ]
    )
  end

  def gun
    @gun ||= Gun.find params[:id]
  end
end
