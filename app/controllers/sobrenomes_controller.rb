class SobrenomesController < ApplicationController
  before_action :set_sobrenome, only: [:show, :update, :destroy]

  # GET /sobrenomes
  def index
    @sobrenomes = Sobrenome.all

    render json: @sobrenomes
  end

  # GET /sobrenomes/1
  def show
    render json: @sobrenome
  end

  def category
    @sobrenomes = Sobrenome.where(nacionalidade: params[:nacionalidade])
    
    render json: @sobrenomes.as_json(only: [:nome]) 
  end

  # POST /sobrenomes
  def create
    @sobrenome = Sobrenome.new(sobrenome_params)

    if @sobrenome.save
      render json: @sobrenome, status: :created, location: @sobrenome
    else
      render json: @sobrenome.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sobrenomes/1
  def update
    if @sobrenome.update(sobrenome_params)
      render json: @sobrenome
    else
      render json: @sobrenome.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sobrenomes/1
  def destroy
    @sobrenome.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sobrenome
      @sobrenome = Sobrenome.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sobrenome_params
      params.require(:sobrenome).permit(:nome, :nacionalidade)
    end
end
