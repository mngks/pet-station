class AdoptionsController < ApplicationController
  def index
    @adoptions = current_user.owner.adoptions
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @adoption = Adoption.new
    @adoption.pet = @pet
    @adoption.user = current_user
    if @adoption.save
      redirect_to pet_adoption_path(@pet, @adoption)
    end
  end
end
