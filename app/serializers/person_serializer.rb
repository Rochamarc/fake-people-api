class PersonSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :nationality, :birthdate

  # has_one :ssn
end
