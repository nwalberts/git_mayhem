class ProfilesController < ApplicationController
  before_action :find_profile, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: "Profile was successfully updated. desdjfhajsdfgjahsdgfjkhgasdjkghfkajhgsdfhjgasdjghkfkhjgasdhjfgakhgjdsfghjkahjsgdfghjashjgfghjsdfjahdjfgadgfhjagdfkahdgsfkhadsfkasjdhfkahsdgfaksdfkjhgasdhfkajsdfgjhksjkfjsadhjfshjdfhjgasdfhgj" }
      else
        format.html { render :edit }
      end
    end
  end

  private

  def find_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:bio, :avatar)
  end
end
d
sdfsdfsdfsdfsdf



''
