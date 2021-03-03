class User < ApplicationRecord
    has_secure_password
    has_many :maybes
    has_many :signups
    has_many :hangs
    has_many :activities, through: :hangs

    def my_prospects
        Prospect.all.select do |prospect|
            prospect.user_id == self.id
        end
    end

    def rsvps
        Signup.select { |s| s.user_id == self}
        .map { |s| s.hang}
    end

    def user_hangs
        Hang.all.select {|h| h.user_id == self.id}
    end

end
