class Sindan < ApplicationRecord
    #has_many :kigyous, dependent: :destroy
    belongs_to :syokusyu,optional: true
    belongs_to :gakka,optional: true
    
    scope :search, -> (keyword) {
      where('sinrosaki like :q OR kigyoumei like :q', q: "%#{keyword}%") if keyword.present?
    }

end
