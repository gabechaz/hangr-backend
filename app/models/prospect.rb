class Prospect < ApplicationRecord
    belongs_to :user
    belongs_to :activity
    has_many :maybes



end
