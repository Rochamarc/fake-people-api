namespace :data do
  desc "Migrando valores de tabela"
  task migrate_data: :environment do
    
    puts "Buscando nomes no banco de dados"
    nomes = NomeProprio.all

    puts "Migrando nome_proprio para FirstName"
    nomes.each do |nome|
      FirstName.create(
        name: nome.nome,
        gender: nome.genero,
        nationality: nome.nacionalidade,
      )
    end

    puts "Buscando sobrenomes no banco de dados"
    sobrenomes = Sobrenome.all 

    puts "Migrando de sobrenome para LastName"
    sobrenomes.each do |sobrenome|
      LastName.create(
        name: sobrenome.nome,
        nationality: sobrenome.nacionalidade
      )
    end
    
  end

end
