class OwnersController < ApplicationController
  def new
    if current_user.owner
      # skip this form
      redirect_to new_pet_path
    else
      @owner = Owner.new
      @owner.user = current_user
    end
  end

  def create
    @owner = Owner.new(owner_params) 
    @owner.user = current_user 
    
    if @owner.save
      redirect_to new_pet_path
    end
  end
  
  private
  
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :bio, :address, :contact)
  end
end
