class Activity < ApplicationRecord
has_many :hangs
has_many :users, through: :hangs

def prospects
    Prospect.all.select do |prospect|
        prospect.activity_id == self.id
    end
end
    
def interested
    self.prospects.map do |prospect|
        prospect.user
    end
end

end
