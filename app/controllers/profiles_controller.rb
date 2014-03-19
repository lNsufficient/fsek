class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]
  
  add_breadcrumb "Din profil", nil 

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    if @profile.created_at == @profile.updated_at
      redirect_to edit_profile_url(@profile) 
    end
  end

  # GET /profiles/1/edit
  def edit
    add_breadcrumb "Redigera", nil
    @no_profile_data = @profile.created_at == @profile.updated_at
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :program, :start_year)
    end
end