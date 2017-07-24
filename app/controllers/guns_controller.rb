class GunsController < ApplicationController
  def create
    Gun.new(gun_params)
  end

  def show; end
  def destroy; end
  def edit; end

  private

  def gun_params
    params.require(:data).permit(
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
end
