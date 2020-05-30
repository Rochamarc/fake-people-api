class NomeAleatorioController < ApplicationController

    def index
        @nome_proprios = NomeProprio.all
        @sobrenomes = Sobrenome.all

        @nome = @nome_proprios.sample
        @sobrenome = @sobrenomes.sample 

        #@nome_completo = "#{@nome.nome} #{@sobrenomes.nome}"
        
        # Teste
        # puts @nome["nome"], @sobrenome["nome"}
        
        # Teste
        nome_c = @nome["nome"]
        nome_c.concat(" ")
        nome_c.concat(@sobrenome["nome"])
        
        render json: { "Nome": nome_c } 
    end
end
