class LastNamesController < ApplicationController
  before_action :set_last_name, only: [:show, :update, :destroy]

  # GET /last_names
  def index
    @last_names = LastName.all

    render json: @last_names
  end

  # GET /last_names/1
  def show
    render json: @last_name
  end

  # POST /last_names
  def create
    @last_name = LastName.new(last_name_params)

    if @last_name.save
      render json: @last_name, status: :created, location: @last_name
    else
      render json: @last_name.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /last_names/1
  def update
    if @last_name.update(last_name_params)
      render json: @last_name
    else
      render json: @last_name.errors, status: :unprocessable_entity
    end
  end

  # DELETE /last_names/1
  def destroy
    @last_name.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_last_name
      @last_name = LastName.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def last_name_params
      params.require(:last_name).permit(:name, :nationality)
    end
end
