namespace :data do
  desc "Populando banco de dados"
  task populate_data: :environment do
    
    puts "Criando pessoas"
    100.times do 
      Person.create({
        full_name: Faker::Name.name_with_middle,
        nationality: Faker::Nation.nationality,
        birthdate: Faker::Date.between(from: 100.years.ago, to: 2.years.ago)
      })
    end

    puts "Criando cpf e identidade"
    people = Person.all

    people.each do |person|
      puts "Criando cpf"
      Ssn.create({
        number: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        person_id: person.id 
      })
      
      last_name = Faker::Name.last_name 
      
      puts "Criando identidade"
      Identity.create({
        number: Faker::IDNumber.brazilian_id(formatted: true),
        father: Faker::Name.male_first_name + " " + Faker::Name.middle_name + " " + last_name,
        mother: Faker::Name.female_first_name + " " + Faker::Name.middle_name + " " + last_name,
        state: Faker::Address.state,
        person_id: person.id
      })
    end
  

  end

end
