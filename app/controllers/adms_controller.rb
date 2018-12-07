class AdmsController < ApplicationController
  def index
      @users=User.all
  end
end
