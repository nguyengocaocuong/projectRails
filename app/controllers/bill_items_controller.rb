class BillItemsController < ApplicationController
    before_action :authenticate_user!
    def show  
       @billItems = Bill.find(params[:id]).bill_items
       @foods = []
       @billItems.each do |item|
        @foods.push(Food.find(item.food_id))
       end
    end
end
