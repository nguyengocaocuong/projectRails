class UsersController < ApplicationController
  def show
    if current_user
      @sheet = current_user
    end
  end
end
