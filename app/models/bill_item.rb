class BillItem < ApplicationRecord
    belongs_to :food
    belongs_to :bill
end
