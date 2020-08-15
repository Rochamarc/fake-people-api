class RandomNamesController < ApplicationController
  def index
    @first_name = FirstName.all.sample
    @last_name = LastName.all.sample 

    render json: { first_name: @first_name, last_name: @last_name }

  end
end
