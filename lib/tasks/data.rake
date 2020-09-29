namespace :data do
  desc "Populando banco de dados"
  task populate_data: :environment do
    
    puts "Criando users"
    100.times do |count|
      u = User.create(
        "email": "example#{count}@example.com",
        "password": "example#{count}",
        "password_confirmation": "example#{count}"
      )
      p u
    end

    puts "Criando pessoas"
    100.times do |u_id|
      Profile.create(
        "name": Faker::Name.name_with_middle,
        "nationality": Faker::Nation.nationality,
        "birthdate": Faker::Date.between(from: 100.years.ago, to: 2.years.ago),
        "user_id": u_id 
      )
    end

    puts "Criando cpf e identidade"
    users = User.all 

    users.each do |user|
      puts "Criando cpf"
      Ssn.create(
        "number": Faker::IDNumber.brazilian_citizen_number(formatted: true),
        "user_id": user.id
      )
      
      last_name = Faker::Name.last_name 
      
      puts "Criando identidade"
      Identity.create(
        "number": Faker::IDNumber.brazilian_id(formatted: true),
        "father": Faker::Name.male_first_name + " " + Faker::Name.middle_name + " " + last_name,
        "mother": Faker::Name.female_first_name + " " + Faker::Name.middle_name + " " + last_name,
        "state": Faker::Address.state,
        "user_id": user.id
      )
    end
  end

  desc "Populando a tabela de posts"
  task populate_posts: :environment do 
    p "Criado posts"
    1000.times do |count|
      post = Post.create!(
        "title": Faker::Books::Lovecraft.sentence,
        "body": Faker::Lorem.sentence,
        "likes": rand(0..1000),
        "user_id": rand(1..100)
      )
    end
    p "Posts criados com sucesso!"
  end
    

end
