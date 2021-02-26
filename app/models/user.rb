class User < ApplicationRecord
    has_secure_password
    has_many :hangs
    has_many :activities, through: :hangs

    def my_prospects
        Prospect.all.select do |prospect|
            prospect.user_id == self.id
        end
    end

    def my_hangs
        Hang.all.select do |hang|
            hang.creator_id == self.id
        end
    end


end
