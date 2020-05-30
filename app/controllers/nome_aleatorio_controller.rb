class NomeAleatorioController < ApplicationController

    def index
        @nome_proprios = NomeProprio.all
        @sobrenomes = Sobrenome.all

        @nome = @nome_proprios.sample
        @sobrenome = @sobrenomes.sample 

        
        nome_c = @nome["nome"]
        nome_c.concat(" ")
        nome_c.concat(@sobrenome["nome"])
        
        render json: { "Nome": nome_c } 
    end

    
    def category
        @nomes = NomeProprio.where(nacionalidade: params[:nacionalidade])
        @sobrenomes = Sobrenome.where(nacionalidade: params[:nacionalidade])

        @nome = @nomes.sample
        @sobrenome = @sobrenomes.sample 
        
        nome_c = @nome["nome"]
        nome_c.concat(" ")
        nome_c.concat(@sobrenome["nome"])
        
        render json: { "Nome": nome_c } 
      end
end
