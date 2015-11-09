class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :profile_params, only: [:create]
  # :show,

  def index
  end

  def show
  end

  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.save
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
      params.require(:profile).permit(:first_name, :last_name, :gender, :profile_image, :birthdate, :occupation, :city, :comedy, :adventure, :drama, :action, :thriller, :horror, :romantic_comedy, :musical, :documentary)
    end

    #default set of params for the empty profile before being filled.
    # def default_params
    #   defaults = {:first_name => "John", :last_name => "Doe", :gender => "Male", :profile_image => "http://allenbukoff.com/newwavepsychology/JohnDoeMasthead.jpg", :birthdate => "01/01/1950". :occupation => "Writer", :city => "City of Dreams", :comedy => "true", :adventure => "false", :drama => "false", :action => "false", :thriller => "true", :horror => "true", :romantic_comedy => "true", :musical => "false", :documentary => "false"}
    # end

end
