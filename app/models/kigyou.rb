class Kigyou < ApplicationRecord
    belongs_to :syokusyu,optional: true

    scope :search, -> (keyword) {
        where(' kigyoumei like :q', q: "%#{keyword}%") if keyword.present?
      }

end
