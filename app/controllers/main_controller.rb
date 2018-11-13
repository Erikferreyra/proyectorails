class MainController < ApplicationController
  def index
    t=Time.new
	 if t.wday==3
		redirect_to adm_path
	else
		redirect_to new_home_path
	end
  end
end
