class SessionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :duration, :credits_worth, :single, :bundle, :cost, :image
end
