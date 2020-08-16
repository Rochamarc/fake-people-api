class PersonSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :nationality, :birthdate

  has_one :ssn
  has_one :identity

  def as_json(options={})
    super(
      root: true,
      include: [:ssn, :identity]
    )
  end
end
