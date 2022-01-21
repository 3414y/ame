class Syuusyoku < ApplicationRecord

    belongs_to :gakka,optional: true
    #has_many :sindans

    enum kennai_values: { "県内" => 1, "県外" => 0 }

    scope :search_gakkoumei, -> (gakkoumei) {
        where(' gakkoumei like :q', q: "%#{gakkoumei}%") if gakkoumei.present?
      }  

      scope :search_gakka, -> (gakka_id) {
        where(' gakka_id =  :q', q: gakka_id) if gakka_id.present?
      }

      scope :search_kennai, -> (kennai) {
        where(" kennai =  #{kennai}") if kennai.present?
      }
 
end
