class SsnSerializer < ActiveModel::Serializer
  attributes :id, :number
  belongs_to :user
end
