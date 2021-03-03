class Hang < ApplicationRecord
    belongs_to :user
    belongs_to :activity
    has_many :signups

    def rsvps
        Signup.all.select {|s| s.hang_id == self.id}
        .map {|s| s.user}
    end

end
