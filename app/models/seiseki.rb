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

    def self.hyouteiheikin(seisekis)
        sum = 0.0
        heikin = 0.0
        kyouka = 0.0
        seisekis.each do |seiseki|
          seiseki.tensus.each do |tensu|
            if tensu.hyoutei.to_i >= 1 
              sum = sum + tensu.hyoutei.to_i
              kyouka = kyouka + 1
            end
          end
        end
        if kyouka >= 1
          heikin = sum / kyouka
        end
        return heikin.round(1)
    end 
end
