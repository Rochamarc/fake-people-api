class NomeProprioSerializer < ActiveModel::Serializer
  attributes :id, :nome, :genero, :nacionalidade
end
