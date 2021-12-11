class BillController < ApplicationController
  def bill
    @bills = current_user.bills
  end
end
