class User < ApplicationRecord
    validates :kumi, presence: true
    has_many :seisekis,dependent: :destroy
end
