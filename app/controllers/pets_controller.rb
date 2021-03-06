class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all

    if user_signed_in?
      # filtering pets that the current user owned
      @pets -= current_user.pets

      # filter pets that the current user adopted

      @pets = @pets.reject do |pet|        
        if pet.adoptions.count == 1
          pet.adoptions.first.user == current_user
        end
      end
    end
  end

  def show
    @adoption = @pet.adoptions.build
    @adoption.user = current_user
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.owner = current_user.owner
    if @pet.save
      redirect_to pet_path(@pet)
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: 'Your pet was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :image_url, :description, :category, :age, :gender, :hdb_approve)
  end
end
