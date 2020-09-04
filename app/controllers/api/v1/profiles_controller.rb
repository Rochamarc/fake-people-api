module Api 
  module V1 
    class ProfilesController < ApplicationController
      before_action :set_profile, only: [:update, :destroy]
      before_action :set_show, only: [:show]
    
      before_action :authenticate_user!, except: [:index, :show]
    
      # GET /profiles
      def index
        @profiles = Profile.all
      
        render json: @profiles
      end
    
      # GET /profiles/1
      def show
        render json: @profile
      end
    
      # POST /profiles
      def create
        @profile = Profile.new(profile_params)
        @user = User.find_by(email: request.headers["uid"])
        @profile.user_id = @user.id 
      
        if @profile.save
          render json: @profile, status: :created, location: @profile
        else
          render json: @profile.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /profiles/1
      def update
        if @profile.update(profile_params)
          render json: @profile
        else
          render json: @profile.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /profiles/1
      def destroy
        @profile.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_profile
          puts ">>>>>>>> #{request;headers}"
          @profile = Profile.find_by("email" => request.headers["uid"])
        end
      
        def set_show 
          @profile = Profile.find(params[:id])
        end
      
        # Only allow a trusted parameter "white list" through.
        def profile_params
          # params.require(:profile).permit(:name, :nationality, :birthdate, :user_id)
        end
    end
  end
end