class HangSerializer < ActiveModel::Serializer
  attributes :id, :time, :location, :people_needed, :user, :rsvps, :rsvp_ids, :time_string, :game_id, :game_name, :game_image, :reviewed, :reviews, :review_info
end
