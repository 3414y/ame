class Syuusyoku < ApplicationRecord

    belongs_to :gakka,optional: true
    #has_many :sindans

    scope :search, -> (keyword) {
        where(' gakkoumei like :q', q: "%#{keyword}%") if keyword.present?
      }
 
end
