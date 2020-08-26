class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :nationality, :birthdate
end
