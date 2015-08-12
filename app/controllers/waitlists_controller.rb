class WaitlistsController < ApplicationController
  def index
  end

  def join
    @waitlist = Waitlist.find_or_create(item_id: params[:item_id])
    @waitlist_user = WaitlistUser.create(user_id: params[:user_id], waitlist_id: @waitlist.id)
    redirect_to items_url
  end

  def destroy
  end
end
