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
        Signup.select { |s| s.user_id == self.id}
        .map { |s| s.hang}
    end

    def user_hangs
        Hang.all.select {|h| h.user_id == self.id}
    end

    def reviews
        Review.all.select{ |r| r.reviewee_id == self.id}
    end

    def karma
       karma_array =  Review.all.select {|r| r.reviewee_id == self.id}
        .map{ |r| r.karma}
        if karma_array[0]
       karma_array =  karma_array.sum / karma_array.length 
        else
            karma_array = 0
        end
        karma_array
    end
end
