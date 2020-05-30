class NomePropriosController < ApplicationController
  before_action :set_nome_proprio, only: [:show, :update, :destroy]

  # GET /nome_proprios
  def index
    @nome_proprios = NomeProprio.all

    render json: @nome_proprios
  end

  # GET /nome_proprios/1
  def show
    render json: @nome_proprio
  end

  def category
    @nomes = NomeProprio.where(nacionalidade: params[:nacionalidade])
    
    render json: @nomes.as_json(only: [:nome]) 
  end

  # POST /nome_proprios
  def create
    @nome_proprio = NomeProprio.new(nome_proprio_params)

    if @nome_proprio.save
      render json: @nome_proprio, status: :created, location: @nome_proprio
    else
      render json: @nome_proprio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nome_proprios/1
  def update
    if @nome_proprio.update(nome_proprio_params)
      render json: @nome_proprio
    else
      render json: @nome_proprio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nome_proprios/1
  def destroy
    @nome_proprio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nome_proprio
      @nome_proprio = NomeProprio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nome_proprio_params
      params.require(:nome_proprio).permit(:nome, :genero, :nacionalidade)
    end
end
