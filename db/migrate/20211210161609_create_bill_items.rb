class CreateBillItems < ActiveRecord::Migration[6.1]
  def change
    create_table :bill_items do |t|
      t.integer :total

      t.timestamps
    end
  end
end
