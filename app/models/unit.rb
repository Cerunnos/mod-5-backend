class Unit < ApplicationRecord
  belongs_to :army
  belongs_to :armylist, required: false
end
