class Bill < ApplicationRecord
    belongs_to :user
    has_many :bill_items
end
