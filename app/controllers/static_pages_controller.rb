class StaticPagesController < ApplicationController
  def home
    @user = current_user
    @foods = Food.all
    end
end
