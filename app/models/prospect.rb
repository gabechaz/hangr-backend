class Prospect < ApplicationRecord
    belongs_to :user
    belongs_to :activity


    def creator
        User.find(self.creator_id)
    end

end
