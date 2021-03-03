class HangSerializer < ActiveModel::Serializer
  attributes :id, :time, :location, :people_needed, :activity, :user, :activity_name
end
