class Review < ApplicationRecord
    belongs_to :hang
    belongs_to :reviewer, class_name: 'User', optional: true
    belongs_to :reviewee, class_name: 'User', optional: true
end
