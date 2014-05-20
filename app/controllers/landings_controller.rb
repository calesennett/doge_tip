class LandingsController < ApplicationController
  def index
  	if current_user
  		resp = DogecoinApi.get_user_balance(current_user.uid)
  		@balance = resp["balance"]
  	end
  end
end