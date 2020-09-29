class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :likes
  belongs_to :user
end
