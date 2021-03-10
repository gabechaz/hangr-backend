class Hang < ApplicationRecord
    belongs_to :user
    has_many :signups

    def rsvps
        Signup.all.select {|s| s.hang_id == self.id}
        .map {|s| s.user}
    end

    def rsvp_ids
        Signup.all.select {|s| s.hang_id == self.id}
        .map {|s| s.user.id}
    end

    def creator
        self.user.name
    end

    def reviews
        Review.select{|r| r.hang_id == self.id}
    end

    def review_info
        reviews.map{ |r| {user:  r.reviewer.name, comment: r.comment, user_image: r.reviewer.img} }
    end

    def reviewed
        self.reviews.map {|r| r.reviewer_id}
    end

 
    

end
