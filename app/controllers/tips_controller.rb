class TipsController < ApplicationController
  def create
    @tip = Tip.create(tips_params)
    to_user = User.find_by_name(tips_params[:to])
    DogecoinApi.move_to_user(@tip.amount, current_user.uid, to_user.uid)
    redirect_to root_path
  end
end
