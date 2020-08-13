class RandomNamesController < ApplicationController
  def index
    first_name = FirstName.all.sample
    last_name = LastName.all.sample 

    @RandomName = { 
      name: first_name.name + " " + last_name.name,
      gender: first_name.gender,
      nationality: last_name.nationality
    }

    render json: @RandomName

  end
end
