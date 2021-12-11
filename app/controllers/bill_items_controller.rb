class BillItemsController < ApplicationController
    def show  
       @billItems = Bill.find(params[:id]).bill_items
    end
end
