class GameSerializer < ActiveModel::Serializer
  attributes :id, :host_id, :round_count
  has_many :rounds
end
