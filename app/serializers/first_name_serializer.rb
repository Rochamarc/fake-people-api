class FirstNameSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :nationality
end
