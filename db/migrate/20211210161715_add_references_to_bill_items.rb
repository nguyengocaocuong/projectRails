class AddReferencesToBillItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :bill_items, :bill, null: false, foreign_key: true
    add_reference :bill_items, :food, null: false, foreign_key: true
  end
end
