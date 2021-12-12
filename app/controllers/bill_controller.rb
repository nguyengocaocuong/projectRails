class BillController < ApplicationController
  before_action :authenticate_user!
  def bill
    @bills = current_user.bills
    @bill_total = [123]
    @bill_price = [1243]
    i = 0
    @bills.each do |b|
      @bill_total[0] = 0
     @bill_price[0] = 0
      b.bill_items.each do |item|
        food = Food.find(item.food_id)
        @bill_price[i] += item.total*food.price
        @bill_total[i] += item.total
      end
      i+=1
    end
  end
  def add_bill
    bill = Bill.find_by(status: 1)
    @total = 1
    if bill && bill.user_id == current_user.id
      bill.bill_items.create(food_id: params[:id],total:1)
      @total = bill.bill_items.length
    else
      current_user.bills.create(time: Time.new, status:1).bill_items.create(food_id: params[:id],total:1)
    end
    redirect_to root_path
  end
end
