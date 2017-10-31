class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :sinopse, :year, :director, :actors, :poster, :trailer, :category, :status, :comment
end
