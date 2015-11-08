class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update, :destroy]
  before_action :profile_params, only: [:create]

  def index
  end

  def show
    @profile = Profile.find(set_profile)
  end

  def new
    @profile = Profile.new
  end

  def edit
    @profile = current_user.profile
  end

  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        # format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        # format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :gender, :iprofile_image, :birthdate, :occupation, :city, :comedy, :adventure, :drama, :action, :thriller, :horror, :romantic_comedy, :musical, :documentary)
    end
end
