class Kigyou < ApplicationRecord
    belongs_to :syokusyu,optional: true

    enum kennnai_values: { "県内" => true, "県外" => false }

    scope :search_kigyoumei, -> (kigyoumei) {
        where(' kigyoumei like :q', q: "%#{kigyoumei}%") if kigyoumei.present?
      }  

      scope :search_syokusyu, -> (syokusyu_id) {
        where(' syokusyu_id =  :q', q: syokusyu_id) if syokusyu_id.present?
      }

      scope :search_kennnai, -> (kennnai) {
        where(" kennnai =  #{kennnai}") if kennnai.present?
      }

end
