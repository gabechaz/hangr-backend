class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :reviewee_id, :reviewer_id, :karma, :comment, :hang_id
end


