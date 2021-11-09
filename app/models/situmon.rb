class Situmon < ApplicationRecord
    has_many :kaitous
    validates :naiyou, presence: true
    validates :kategori, presence: true
    validates :kategori2, presence: true
end