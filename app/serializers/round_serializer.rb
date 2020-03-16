class RoundSerializer < ActiveModel::Serializer
  attributes :id, :question, :options, :answer, :game_id
end
