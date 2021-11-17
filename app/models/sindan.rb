class Sindan < ApplicationRecord
    #has_many :kigyous, dependent: :destroy
  
    scope :search, -> (keyword) {
      where('sinrosaki like :q OR kigyoumei like :q', q: "%#{keyword}%") if keyword.present?
    }

end
