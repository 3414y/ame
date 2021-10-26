class Tensu < ApplicationRecord
    belongs_to :seiseki,optional: true
    belongs_to :kyouka,optional: true
end
