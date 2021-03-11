class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :user_hangs, :rsvps, :favGame, :favGenre, :location, :img, :bio, :karma, :reviews
end
