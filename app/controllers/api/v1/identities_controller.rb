module Api
  module V1
    class IdentitiesController < ApplicationController
      before_action :set_identity, only: [:show, :update, :destroy]

      before_action :authenticate_user!

      # GET /identities/1
      def show
        render json: @identity
      end

      # POST /identities
      def create
        @user.findBy("email" => request.headers["uid"])
        @user.identity = Identity.new(identity_params)

        if @user.save
          render json: @user.identity, status: :created, location: @identity
        else
          render json: @user.identity.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /identities/1
      def update
        if @identity.update(identity_params)
          render json: @identity
        else
          render json: @identity.errors, status: :unprocessable_entity
        end
      end

      # DELETE /identities/1
      def destroy
        @identity.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_identity
          @identity = Identity.findBy("email" => request.headers["uid"])
        end

        # Only allow a trusted parameter "white list" through.
        def identity_params
          params.require(:identity).permit(:number, :father, :mother, :state, :user_id)
        end
    end
  end
end
