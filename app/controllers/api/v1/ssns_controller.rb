module Api
  module V1
    class SsnsController < ApplicationController
      before_action :set_ssn, only: [:show, :update, :destroy]

      before_action :authenticate_user!

      # GET /ssns/1
      def show
        render json: @ssn
      end

      # POST /ssns
      def create
        @user.findBy("email" => request.headers["uid"])
        @user.ssn = Ssn.new(ssn_params)

        if @user.save
          render json: @user.ssn, status: :created, location: @ssn
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /ssns/1
      def update
        if @ssn.update(ssn_params)
          render json: @ssn
        else
          render json: @ssn.errors, status: :unprocessable_entity
        end
      end

      # DELETE /ssns/1
      def destroy
        @ssn.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_ssn
          @ssn = Ssn.find("email" => request.headers["uid"])
        end

        # Only allow a trusted parameter "white list" through.
        def ssn_params
          params.require(:ssn).permit(:number, :user_id)
        end
    end
  end
end
