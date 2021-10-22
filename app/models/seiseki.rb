class Seiseki < ApplicationRecord
    belongs_to :user,optional: true 
    has_many :tensus,dependent: :destroy
    accepts_nested_attributes_for :tensus
    def self.search_seiseki_id(user,gakki)
        data = Seiseki.find_by("user_id = ? and gakunen = ? and gakki = ?",user.id,user.gakunen,gakki)
        if data.nil?
           return nil
        else
           return data.id
        end
    end
end
