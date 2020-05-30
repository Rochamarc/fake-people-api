class NomeAleatorioController < ApplicationController

    def index
        @nome_proprios = NomeProprio.all
        @sobrenomes = Sobrenome.all

        @nome = @nome_proprios.sample
        @sobrenome = @sobrenomes.sample 

        @nome_completo = "#{@nome.nome} #{@sobrenomes.nome}"
        
        # Teste
        puts @nome_completo
        
        render json: { "Nome": @nome, "Sobrenome": @sobrenome } 
    end
end
