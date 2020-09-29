class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :likes
  belongs_to :user

  def user
    object.user.as_json(include: [:profile], only: [:email]) 
  end
end
