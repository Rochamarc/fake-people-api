class IdentitySerializer < ActiveModel::Serializer
  attributes :id, :number, :father, :mother, :state

  # belongs_to :person
end
