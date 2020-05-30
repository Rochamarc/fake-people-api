class NomeAleatorioController < ApplicationController

    def index
        @nome_proprios = NomeProprio.all
        @sobrenomes = Sobrenome.all

        @nome = @nome_proprios.sample
        @sobrenome = @sobrenomes.sample 

        #@nome_completo = "#{@nome.nome} #{@sobrenomes.nome}"
        
        # Teste
        # puts @nome["nome"], @sobrenome["nome"}
        
        render json: { "Nome": @nome + " " + @sobrenome } 
    end
end
