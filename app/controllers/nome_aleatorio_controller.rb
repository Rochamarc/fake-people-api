class NomeAleatorioController < ApplicationController

    def index
        @nome_proprios = NomeProprio.all
        @sobrenomes = Sobrenome.all

        @nome = @nome_proprios.sample
        @sobrenome = @sobrenomes.sample 

        #@nome_completo = "#{@nome.nome} #{@sobrenomes.nome}"
        
        # Teste
<<<<<<< HEAD
        nome_c = @nome["nome"]
        nome_c.concat(" ")
        nome_c.concat(@sobrenome["nome"])
        
        render json: { "Nome": nome_c } 
=======
        # puts @nome["nome"], @sobrenome["nome"}
        
<<<<<<< HEAD
        render json: { "Nome": @nome + " " + @sobrenome } 
>>>>>>> 7f2fbeda140d6a720a5a37e994fb8c45b186d85e
=======
        # Teste
        nome_c = @nome["nome"]
        nome_c.concat(" ")
        nome_c.concat(@sobrenome["nome"])
        
        render json: { "Nome": nome_c } 
>>>>>>> 9ff2f1a445af1cb3c605f8cd612a2fa03b2aab47
    end
end
