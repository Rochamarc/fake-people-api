namespace :dev do
  desc "Popula o banco de dados"
  task setup: :environment do

    ##### Criando primeiro nomes ####

    puts "Criando nome proprio"

    100.times do 
      NomeProprio.create(
        nome: Faker::Name.male_first_name,
        genero: "Male",
        nacionalidade: Faker::Nation.nationality
      )
    end

    puts "Criando sobrenome" 

    100.times do 
      Sobrenome.create(
        nome: Faker::Name.last_name,
        nacionalidade: Faker::Nation.nationality
      )
    end
  end

end
