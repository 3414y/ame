class Kaitou < ApplicationRecord
    belongs_to :situmon,optional: true
    validates :hentou, presence: true
end
