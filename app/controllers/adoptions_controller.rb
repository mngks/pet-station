class AdoptionsController < ApplicationController
  def create
    @pet = Pet.find(params[:pet_id])
    @adoption = Adoption.new
    @adoption.pet = @pet
    @adoption.user = current_user

    if @adoption.save
      redirect_to root_path
    end
  end
end
