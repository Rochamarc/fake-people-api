class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :nationality, :birthdate
  belongs_to :user

  def user
    object.user.as_json(include: [:ssn, :identity], only: [:email, :name])
  end
end
